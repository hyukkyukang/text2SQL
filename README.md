# text2SQL

[![codecov](https://codecov.io/gh/hyukkyukang/text2SQL/branch/main/graph/badge.svg?token=RR6IH1V5AA)](https://codecov.io/gh/hyukkyukang/text2SQL)

## Environment Setup

Install requirements with the following command

```bash
pip install -r requirements.txt
```

## SQL Parser

We support parsing SQL string into abstract syntax tree (AST).

We first use postgreSQL parser to parse SQL string into AST. Then, we convert it into our own AST defined with ASDL.

To use the parser, run the following command:

```bash
python src/parser/parser.py --sql [SQL STRING] --asdl_path [ASDL FILE PATH]
```

Note that a ASDL file defining the AST is required. An Example can be found in `src/grammar/ratsql_extended.asdl`.
