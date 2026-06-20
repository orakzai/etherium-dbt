# produces no rows, and all tables become empty except the incremental models. 
dbt run --empty 

dbt run --fail-fast

# flags can also be put in the project.yml file in the flags section

dbt test



dbt docs generate
dbt docs serve

# -- put the csv file in the seeds direcotry
dbt seeds 

# -- Compiles the model and shows the query which can be run in dwh
dbt compile -m eth_activity_per_day
dbt compile --inline "{{ conversion('t.value', 's.decimals') }}"

# show will compile and the run the query in dwh
dbt show --select stablecoin_activity_per_day --limit 10
dbt show --inline "select * from {{ ref('model_name') }}"

# -- show the resources in the project
dbt ls 
dbt ls --resource-type source 
dbt ls --resource-type model 

# removes target and packages directory 
dbt clean

# runs seed/snapshot/compile/run/test
dbt build

# FIrst run creates the snapshot
# subsequent runs updates the existing table
dbt snapshot
