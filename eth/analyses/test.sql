-- {{ codegen.generate_source(schema_name='sch_eth', database_name='dp_eth', generate_columns=True, include_descriptions=False, include_data_types=False) }}

-- {{ codegen.generate_model_yaml(model_names=['stg_transactions', 'stablecoin_activity_per_day'], upstream_descriptions=False, include_data_types=False)  }}

select
{{ dbt_utils.star(from=ref('stg_transactions'), quote_identifiers=False, except=['RECEIPT_CONTRACT_ADDRESS'], prefix='stg_') }}

from {{ ref('stg_transactions') }}