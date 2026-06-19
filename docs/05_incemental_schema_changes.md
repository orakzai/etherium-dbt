
	{{ config(materialized='incremental', incremental_strategy='append', on_schema_change='sync_all_columns')}}


if a new column is added e.g. then 2 options:
1. do a --full-refresh
2. use on_schema_change parameter

Following values supported

1. ignore (default)
2. fail
3. append_new_columns (exsisting columns not removed)
4. sync_all_columns

https://docs.getdbt.com/docs/build/incremental-models#what-if-the-columns-of-my-incremental-model-change 

NO backfilling for any of the above 4. do full refresh