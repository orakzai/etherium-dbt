# Incremental Strategies

1. append
2. merge
3. delete+insert
4. insert_overwrite
5. mircobatch


For full refresh use the flag:
dbt run -s transactions_enriched --full-refresh

## delete+insert
{{
    config(
        materialized='incremental',
        incremental_strategy='delete+insert',
        unique_key='date_day'
    )
}}

select * from {{ ref('stg_events') }}

    {% if is_incremental() %}
        -- this filter will only be applied on an incremental run
        -- add a lookback window of 3 days to account for late-arriving records
        where date_day >= (select {{ dbt.dateadd("day", -3, "max(date_day)") }} from {{ this }})  
    {% endif %}

## Microbatch

    {{
        config(
            materialized='incremental',
            incremental_strategy='microbatch',
            event_time='event_occurred_at',
            batch_size='day',
            lookback=3,
            begin='2020-01-01',
            full_refresh=false
        )
    }}

    select * from {{ ref('stg_events') }} -- this ref will be auto-filtered

also need to set the event_time property in models parents

        models:
    - name: stg_events
        config:
        event_time: my_time_field