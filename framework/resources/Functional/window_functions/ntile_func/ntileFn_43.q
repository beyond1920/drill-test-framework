SELECT NTILE_col7 , COUNT(NTILE_col7) FROM (SELECT col7 , NTILE(23) OVER(PARTITION BY col7 ORDER BY col0) NTILE_col7 FROM `allTypsUniq.parquet`) sub_query GROUP BY NTILE_col7;
