-- produces no rows, and all tables become empty except the incremental models. 
dbt run --empty 

dbt run --fail-fast

-- flags can also be put in the project.yml file in the flags section