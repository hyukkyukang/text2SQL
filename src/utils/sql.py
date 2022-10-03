import pglast
import pprint
import functools

from src.utils.string import multi_space_to_single_space

def double_quotes_to_single_quotes(sql_str):
        return sql_str.replace('"', "'")

def add_subquery_alias(sql_str):
    tokens_before_parenthesis = []
    last_token = ""
    current_token = ""
    alias_cnt = 1
    parenthesis_depth = 0
    sql_str = multi_space_to_single_space(sql_str)
    new_sql_str = ""
    for character in sql_str:
        new_sql_str += character
        # State change
        if character in [" ", "\n", "\t"]:
            last_token = current_token
            current_token = ""
        else:
            current_token += character
        # Set parenthesis depth
        if character == '(':
            parenthesis_depth +=1 
            tokens_before_parenthesis.append(last_token)
        elif character == ')':
            parenthesis_depth -=1 
            popped_token = tokens_before_parenthesis.pop(-1)
            if popped_token.lower() == "from":
                # Add alias
                new_alias = f"S{alias_cnt}"
                alias_cnt += 1
                new_sql_str += f" AS {new_alias}"
    return new_sql_str

def replace_table_or_column_names_with_postgresql_keywords(sql_str):
    keywords = ["CAST", "cast"]
    for keyword in keywords:
        sql_str = sql_str.replace(f" FROM {keyword} ", f" FROM {keyword}1 ").replace(f" JOIN {keyword} ", f" JOIN {keyword}1 ")
    return sql_str

def loosely_parse(sql_str):
    """_summary_: Parse a SQL string and return a parse tree. If the parsing fails, return None.

    Args:
        sql_str (str): SQL string to parse

    Returns:
        pglast.ast.Node: pglast Node object
    """ 
    def is_nested_query_in_from_clause_without_alias(e_args):
        return e_args[0] == "subquery in FROM must have an alias"
    def has_join_keyword_without_join_condition(sql, e_args):
        sql = sql.lower()
        if "syntax error at" in e_args[0].lower():
            # Cut off the WHERE clause
            where_start_idx = e_args[1]
            sql_substring = sql[:where_start_idx]
            # Cut off before FROM clause
            from_start_idx = sql_substring.index("from")
            sql_substring = sql_substring[from_start_idx:]
            if " join " in sql_substring and " on " not in sql_substring:
                return True
        return False
    def add_natural_keyword(sql, where_start_idx):
        sql_front = sql[:where_start_idx]
        sql_rear = sql[where_start_idx:]
        return sql_front.replace(" join ", " natural join ").replace(" JOIN ", " NATURAL JOIN ") + sql_rear

    sql_str_ = double_quotes_to_single_quotes(sql_str)
    sql_str_ = replace_table_or_column_names_with_postgresql_keywords(sql_str_)
    try:
        parse_tree = pglast.parse_sql(sql_str_)
    except pglast.parser.ParseError as e:
        if is_nested_query_in_from_clause_without_alias(e.args): 
            sql_str_ = add_subquery_alias(sql_str_)
            return loosely_parse(sql_str_)
        elif has_join_keyword_without_join_condition(sql_str_, e.args):
            sql_str_ = add_natural_keyword(sql_str_, where_start_idx=e.args[1])
            return loosely_parse(sql_str_)
        else:
            raise e
    return parse_tree[0]

# Recursively set att_name of object to att_value
def set_att_value(object, att_name, att_value):
    def is_pglast_object(obj):
        return str(type(obj)).startswith("<class 'pglast.")
    if hasattr(object, att_name):
        setattr(object, att_name, att_value)
    for att_str in filter(lambda att_str: not att_str.startswith("__") and (type(getattr(object, att_str)) in [list, tuple] or
        is_pglast_object(getattr(object,att_str))), dir(object)):
        selected_object = getattr(object, att_str)
        if type(selected_object) in [list, tuple]:
            for item in selected_object:
                set_att_value(item, att_name, att_value)
        else:
            set_att_value(selected_object, att_name, att_value)
    return object



def pprint_parse_tree(parse_tree):
    """_summary_: Print a parse tree in a readable json format.

    Args:
        parse_tree (pglast.ast.Node): pglast Node object
    """
    def handle_null(input_str):
        return input_str.replace("None", "null")
    def handle_boolean(input_str):
        return input_str.replace(" True", " true").replace(" False", " false")
    def handle_tuple(input_str):
        return input_str.replace("(", "[").replace(",)", "]").replace(")", "]")
    def handle_qutoes(input_str):
        return input_str.replace("'", '"')
    string_to_print = pprint.pformat(parse_tree)
    processed_string = functools.reduce(lambda x, func: func(x), [handle_null, handle_boolean, handle_tuple, handle_qutoes], string_to_print)
    print(processed_string)
