# Microsoft KaggleDBQA Dataset: Realistic Evaluation of Text-to-SQL Parsers


## Introduction
Microsoft KaggleDBQA is a cross-domain and complex evaluation dataset of real Web databases, with domain-specific data types, original formatting, and unrestricted questions. It also provides database documentation which contain rich in-domain knowledge. The nature of obscure and abbreviated column/table names makes KaggleDBQA challenging to existing Text-to-SQL parsers. For more details, please see our [paper](https://arxiv.org/abs/2106.11455).

## Data Format

### Natural Language questions and corresponding SQL queries
Each file in `examples/` contains the following fields:
- `question`: the natural language question
- `question_toks`: the natural language question tokens
- `db_id`: the database id to which this question is addressed.
- `query`: the SQL query corresponding to the question. 
- `query_toks`: the SQL query tokens corresponding to the question. 
- `sql`: parsed results of this SQL query using `process_sql.py` from [Spider](https://github.com/taoyds/spider/blob/master/process_sql.py)

``` json
   {
        "db_id": "StudentMathScore",
        "query": "SELECT T1.school_district FROM FINREV_FED_17 as T1 JOIN FINREV_FED_KEY_17 as T2 ON T1.state_code = T2.state_code WHERE T2.state = \"Wisconsin\" ORDER BY T1.t_fed_rev DESC LIMIT 1",
        "query_toks": ["SELECT", "T1.school_district", "FROM", "FINREV_FED_17", ...],
        "question": "Which school district receive the most of federal revenue through state in Wisconsin?",
        "question_toks": ["Which", "school", "district", ...],
        "sql": {
            "from": {
                "table_units": [
                    [
                        "table_unit",
                        0
                    ],
                    [
                        "table_unit",
                        2
                    ]
                ],
        ...
        }
    },
```



### Tables
`KaggleDBQA_tables.json` contains the following information for each database:
- `db_id`: database id
- `table_names_original`: original table names.
- `table_names`: table names. The only preprocess steps are (1) tokenize names based on snake case and camel case. (2) lowercase. 
- `column_names_original`: original column names. Each column entry is given as `[tableindex, name]`, where `tableindex` is the index of the table this column belongs to (in `table_names`), and `name` is the name of the column. 
- `column_names`: column names. The only preprocess steps are (1) tokenize names based on snake case and camel case. (2) lowercase.
- `column_names_manually_normalized_alternative`: normalized column names for an alternative evaluation setting.  This was done manually using column descriptions to help clarify each column and without introducing any extra knowledge into the column names except for the expansion of abbreviations (e.g. `t_fed_rev` -> `total federal revenue`). **Please evaluate parsers in non-normalized setting by default, and use normalized column names for research exploration of model capabilities (as in our paper).**
- `column_descriptions`: textual descriptions that explain the meaning of the columns.
- `db_overview`: textual descriptions that describe the general content in each DB.
- `value_enums`: the set of possible values in the categorial columns and their meaning explanations.
- `column_types`: data type of each column.
- `foreign_keys`: foreign keys in the database. `[3, 8]` means column indices in the `column_names`. These two columns are foreign keys of two different tables.
- `primary_keys`: primary keys in the database. Each number is the index of `column_names`.

``` json
    {
        "column_descriptions": [
        ...,
            "Total federal revenue through the state to each school district.",
            "Federal revenue through the state- Title 1 (no child left behind act).",
            "Federal revenue through the state- Child Nutrition A",
        ...
        ],
        "column_names": [
        ...,
            [
                0,
                "t fed rev"
            ],
            [
                0,
                "c14"
            ],
            [
                0,
                "c25"
            ],
        ...
        ],
        "column_names_normalized": [
        ...,
            [
                0,
                "total federal revenue"
            ],
            [
                0,
                "child 14"
            ],
            [
                0,
                "child 25"
            ],
        ...
        ],
        "column_names_original": [
        ...,
            [
                0,
                "t_fed_rev"
            ],
            [
                0,
                "c14"
            ],
            [
                0,
                "c25"
            ],
        ...
        ],
        "column_types": [
        ...,
            "number",
            "number",
            "number",
        ...
        ],
        "db_id": "StudentMathScore",
        "foreign_keys": [],
        "primary_keys": [],
        "table_names": [
            "finrev fed 17",
            "ndecoreexcel math grade8",
            "finrev fed key 17"
        ],
        "table_names_original": [
            "FINREV_FED_17",
            "NDECoreExcel_Math_Grade8",
            "FINREV_FED_KEY_17"
        ]
    },
```




## Database Content
All the database content stored in SQLite database file under `databases/`.


## Evaluation
KaggleDBQA is primarily used as a testing suite for realistic semantic parsing of text-to-SQL.
We introduce two evaluation settings here (1) Plain-Testing (2) Few-Shot Annotation/Finetuning.
We randomly split examples in each database into two subsets(30/70 ratio): finetune and test.

### (1) Plain-Testing
Use the files `examples/*_test` to evaluate parsers.

### (2) Few-Shot Annotation/Finetuning
You can use the in-domain examples contained in `examples/*_fewshot` to improve your model (e.g., by fine-tuning or
other few-shot training methods) before testing on the examples in `examples/*_test`.

## Citation and Contact
If you use the dataset in your work, please cite our paper.

```
@inproceedings{lee-2021-kaggle-dbqa,
    title = "{KaggleDBQA}: Realistic Evaluation of Text-to-{SQL} Parsers",
    author = "Lee, Chia-Hsuan  and
      Polozov, Oleksandr  and
      Richardson, Matthew",
    booktitle = "Proceedings of the 59th Annual Meeting of the Association for Computational Linguistics and the 11th International Joint Conference on Natural Language Processing (Volume 1: Long Papers)",
    month = aug,
    year = "2021",
    address = "Online",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2021.acl-long.176",
    pages = "2261--2273"
}
```

Please contact Chia-Hsuan Lee (chiahlee[at]uw.edu) for questions and suggestions.
