SELECT * FROM (SELECT col7 , LAG(col3) OVER(PARTITION BY col7 ORDER BY col0) LAG_col3 FROM `allTypsUniq.parquet`) sub_query WHERE LAG_col3 is NOT null;