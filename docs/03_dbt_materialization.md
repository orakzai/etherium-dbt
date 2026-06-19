## Materialization

We can specify for each model how they should be persisted in the warehouse

2 places:

1. dbt_project.yml
    in the models section

```
    models:
        eth:
            +materialized: view
``` 

PS. notice the + sign for the property that is acting on eth structure

2. Per model file

        {{ config(materialized: 'view') }}
        {{ config(materialized: 'table') }}    
        {{ config(materialized: 'incremental') }}   
        {{ config(materialized: 'ephemeral') }}
        {{ config(materialized: 'materialized_view') }}

Per model is specific and will take precendence over project level generic config

Views vs Tables => Computations vs Storage
if something is queried often, consider materializing as table

https://docs.getdbt.com/docs/build/materializations

