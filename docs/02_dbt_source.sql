-- Access source:

select * from {{ source('source_name_in_sources.yml', 'table_name_in_sources.yml in models')}}

-- Access model

select * from {{ ref('model file name in models dir')}}

-- Run model
-- dbt run -s 'model file name in models dir'
