select col2 , lead(col2) over(partition by col7 order by col2) lead_col2 from `allTypsUniq.parquet`;