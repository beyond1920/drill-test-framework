SELECT col1 , LAG_col1 FROM ( SELECT col1 , LAG(col1) OVER( PARTITION BY col2 ORDER BY col1 nulls LAST ) LAG_col1 FROM `fewRowsAllData.parquet`) sub_query WHERE LAG_col1 IS null;