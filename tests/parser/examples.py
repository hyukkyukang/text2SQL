projection_queries = ["SELECT * FROM tab1",
              "SELECT a FROM tab2",
              "SELECT a, b FROM tab3",
              "SELECT T.a FROM tab4 T"]

aggregation_queries = ["SELECT count(*) FROM tab1",
              "SELECT avg(a) FROM tab2",
              "SELECT min(a), max(b) FROM tab3",
              "SELECT sum(T.a) FROM tab4 T"]

selection_queries = ["SELECT count(*) FROM tab1 WHERE a > 5",
              "SELECT avg(a) FROM tab2 WHERE a = 5",
              "SELECT min(a), max(b) FROM tab3 WHERE b < 5",
              "SELECT sum(T.a) FROM tab4 T  WHERE b <= 5",
              "SELECT sum(T.a) FROM tab4 T  WHERE b >= 5",
              "SELECT sum(T.a) FROM tab4 T  WHERE b != 5",
              "SELECT sum(T.a) FROM tab4 T  WHERE b != 'd'",
              "SELECT sum(T.a) FROM tab4 T  WHERE b = 'd'",
              "SELECT sum(T.a) FROM tab4 T  WHERE b != 'd' AND a > 5",
              "SELECT sum(T.a) FROM tab4 T  WHERE b = 'd' OR b < 4",
              "SELECT sum(T.a) FROM tab4 T  WHERE b between 1 and 3 OR b < 4",]

groupby_queries = ["SELECT a FROM tab1 GROUP BY a",
                   "SELECT a FROM tab1 GROUP BY b",
                   "SELECT count(a), b FROM tab1 GROUP BY b",
                   "SELECT a, b FROM tab1 GROUP BY a, b",
                   "SELECT a, b, max(c) FROM tab1 GROUP BY a, b"]

having_queries = ["SELECT a FROM tab1 GROUP BY a HAVING count(b) > 5",
                   "SELECT a FROM tab1 GROUP BY b HAVING max(a) = 3",
                   "SELECT count(a), b FROM tab1 GROUP BY b HAVING max(a) < 2",
                   "SELECT a, b FROM tab1 GROUP BY a, b HAVING min(a) = 3",
                   "SELECT a, b, max(c) FROM tab1 GROUP BY a, b HAVING sum(c) > 5"]

orderby_queries = ["SELECT a FROM tab1 GROUP BY a HAVING count(b) > 5 order by a",
                   "SELECT a FROM tab1 GROUP BY b HAVING max(a) = 3 order by a desc",
                   "SELECT count(a), b FROM tab1 GROUP BY b HAVING max(a) < 2 order by a asc",
                   "SELECT a, b FROM tab1 GROUP BY a, b HAVING min(a) = 3 order by a asc, b desc",
                   "SELECT a, b, max(c) FROM tab1 GROUP BY a, b HAVING sum(c) > 5 order by a limit 10",
                   "SELECT a, count(b) FROM tab1 GROUP BY a HAVING count(b) > 5 order by count(b)"]

join_queries = ["SELECT * FROM tab1 a, tab2 b where a.c1 = b.c2",
                "SELECT * FROM tab1 AS a JOIN tab2 AS b ON a.c1 = b.c2 JOIN tab3 AS d ON b.c3=d.c4",
                "SELECT * FROM tab1 AS a LEFT JOIN tab2 AS b ON a.c1 = b.c2",
                "SELECT * FROM tabl1 AS a RIGHT JOIN tab2 AS b ON a.c1 = b.c2",
                "SELECT * FROM tab1 AS a FULL JOIN tab2 AS b ON a.c1 = b.c2",
                "SELECT * FROM tab1 AS a CROSS JOIN tab2 AS b",
                "SELECT * FROM tab1 AS a NATURAL JOIN tab2 AS b"]


nested_queries = ["SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)",
                  "SELECT title FROM film WHERE length >= ANY( SELECT MAX( length ) FROM film NATURAL JOIN film_category GROUP BY  category_id )",
                  "SELECT title FROM film WHERE length2 < ALL( SELECT MAX( length2 ) FROM film NATURAL JOIN film_category GROUP BY category_id2 )",
                  "SELECT song_name FROM singer WHERE EXISTS (SELECT * FROM singer WHERE name = 'Mike')",
                  "SELECT song_name FROM singer WHERE NOT EXISTS (SELECT * FROM singer WHERE name = 'Mike')",
                  "SELECT song_name FROM singer WHERE age IN (SELECT age FROM singer WHERE name = 'Mike')",]

set_queries = ["SELECT a from tab1 UNION SELECT b from tab2",
               "SELECT a from tab1 UNION ALL SELECT b from tab2",
               "SELECT a from tab1 INTERSECT SELECT b from tab2",
               "SELECT a from tab1 EXCEPT SELECT b from tab2",
               "SELECT a from tab1 UNION SELECT b from tab2 UNION SELECT c from tab3"]

