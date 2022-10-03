# 08/03/2020 updated: corrected column name and column name original mismatch in 2 dbs (scholar and formula_1) in tables.json. Also, used process_sql.py to reparse SQL queries (this only affects some models (e.g. RATSQL) which use our parsed SQL as the SQL input).
# 06/01/2020 updated: corrected ~40 annotation errors/mismatches in dev.json



This folder contains the Spider training and dev data sets for the EMNLP 2018 paper Spider: A Large-Scale Human-Labeled Dataset for Complex and Cross-Domain Semantic Parsing and Text-to-SQL Task.

It contains the following files:

- train_spider.json
	# Training Examples: 7000
	# Databases:		 140
- train_others.json
	# Training Examples: 1659
	# Databases:		 6
- dev.json
	# Training Examples: 1034
	# Databases:		 20
- tables.json
	# Databases: 	     166
- dev_gold.sql
- train_gold.sql
- database/
- README.txt

The official final Spider training data set combines train_spider.json and train_others.json.
The databases used in train_others.json are from Restaurants, GeoQuery, Scholar, Academic, IMDB, and Yelp which are prepared by Finegan-Dollak et al., 2018.
The databases and SQL examples in train_spider.json are originally prepared by us.
For the format of each json file, please refer to our github page https://github.com/taoyds/spider.
In database/, there is one folder for each database which contains the [db_name].sqlite file.
For most databases, we also provide a schema.sql file with SQL statements to create the database.

If you use the dataset, please cite the following papers including Finegan-Dollak et al., 2018 and the original datasets for Restaurants, GeoQuery, Scholar, Academic, IMDB, and Yelp.

@inproceedings{Yu&al.18c,
  year =         2018,
  title =        {Spider: A Large-Scale Human-Labeled Dataset for Complex and Cross-Domain Semantic Parsing and Text-to-SQL Task},
  booktitle =    {EMNLP},
  author =       {Tao Yu and Rui Zhang and Kai Yang and Michihiro Yasunaga and Dongxu Wang and Zifan Li and James Ma and Irene Li and Qingning Yao and Shanelle Roman and Zilin Zhang and Dragomir Radev }
}

@InProceedings{P18-1033,
  author = 	"Finegan-Dollak, Catherine
		and Kummerfeld, Jonathan K.
		and Zhang, Li
		and Ramanathan, Karthik
		and Sadasivam, Sesh
		and Zhang, Rui
		and Radev, Dragomir",
  title = 	"Improving Text-to-SQL Evaluation Methodology",
  booktitle = 	"Proceedings of the 56th Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers)",
  year = 	"2018",
  publisher = 	"Association for Computational Linguistics",
  pages = 	"351--360",
  location = 	"Melbourne, Australia",
  url = 	"http://aclweb.org/anthology/P18-1033"
}

@InProceedings{data-sql-imdb-yelp,
  dataset   = {IMDB and Yelp},
  author    = {Navid Yaghmazadeh, Yuepeng Wang, Isil Dillig, and Thomas Dillig},
  title     = {SQLizer: Query Synthesis from Natural Language},
  booktitle = {International Conference on Object-Oriented Programming, Systems, Languages, and Applications, ACM},
  month     = {October},
  year      = {2017},
  pages     = {63:1--63:26},
  url       = {http://doi.org/10.1145/3133887},
}

@article{data-academic,
  dataset   = {Academic},
  author    = {Fei Li and H. V. Jagadish},
  title     = {Constructing an Interactive Natural Language Interface for Relational Databases},
  journal   = {Proceedings of the VLDB Endowment},
  volume    = {8},
  number    = {1},
  month     = {September},
  year      = {2014},
  pages     = {73--84},
  url       = {http://dx.doi.org/10.14778/2735461.2735468},
} 

@InProceedings{data-atis-geography-scholar,
  dataset   = {Scholar, and Updated ATIS and Geography},
  author    = {Srinivasan Iyer, Ioannis Konstas, Alvin Cheung, Jayant Krishnamurthy, and Luke Zettlemoyer},
  title     = {Learning a Neural Semantic Parser from User Feedback},
  booktitle = {Proceedings of the 55th Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers)},
  year      = {2017},
  pages     = {963--973},
  location  = {Vancouver, Canada},
  url       = {http://www.aclweb.org/anthology/P17-1089},
}

@inproceedings{data-geography-original
  dataset   = {Geography, original},
  author    = {John M. Zelle and Raymond J. Mooney},
  title     = {Learning to Parse Database Queries Using Inductive Logic Programming},
  booktitle = {Proceedings of the Thirteenth National Conference on Artificial Intelligence - Volume 2},
  year      = {1996},
  pages     = {1050--1055},
  location  = {Portland, Oregon},
  url       = {http://dl.acm.org/citation.cfm?id=1864519.1864543},
}

@inproceedings{data-restaurants-logic,
  author    = {Lappoon R. Tang and Raymond J. Mooney},
  title     = {Automated Construction of Database Interfaces: Intergrating Statistical and Relational Learning for Semantic Parsing},
  booktitle = {2000 Joint SIGDAT Conference on Empirical Methods in Natural Language Processing and Very Large Corpora},
  year      = {2000},
  pages     = {133--141},
  location  = {Hong Kong, China},
  url       = {http://www.aclweb.org/anthology/W00-1317},
}

@inproceedings{data-restaurants-original,
 author    = {Ana-Maria Popescu, Oren Etzioni, and Henry Kautz},
 title     = {Towards a Theory of Natural Language Interfaces to Databases},
 booktitle = {Proceedings of the 8th International Conference on Intelligent User Interfaces},
 year      = {2003},
 location  = {Miami, Florida, USA},
 pages     = {149--157},
 url       = {http://doi.acm.org/10.1145/604045.604070},
}

@inproceedings{data-restaurants,
  author    = {Alessandra Giordani and Alessandro Moschitti},
  title     = {Automatic Generation and Reranking of SQL-derived Answers to NL Questions},
  booktitle = {Proceedings of the Second International Conference on Trustworthy Eternal Systems via Evolving Software, Data and Knowledge},
  year      = {2012},
  location  = {Montpellier, France},
  pages     = {59--76},
  url       = {https://doi.org/10.1007/978-3-642-45260-4_5},
}
