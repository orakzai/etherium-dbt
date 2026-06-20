-- produces no rows, and all tables become empty except the incremental models. 
dbt run --empty 

dbt run --fail-fast

-- flags can also be put in the project.yml file in the flags section

dbt test



dbt docs generate
dbt docs serve

-- put the csv file in the seeds direcotry
dbt seeds 