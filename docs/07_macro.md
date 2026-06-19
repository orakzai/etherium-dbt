## DRY Principles - Macros Advanced 1 


- Under macros folder create the file test.sql

``` jinja
{% macro random_macro() %}

{{ log('bla', info = True ) }}

{% endmacro %}
```

- And call the macro at the end of eth_activity_per_day.sql:

``` jinja
{{ random_macro() }}
```

- And run eth_activity_per_day:

	`dbt run --select eth_activity_per_day`
	


- Then modify random_macro like so:

``` jinja
{% macro random_macro() %}

{% set query %}

select
distinct
token_address
from {{ref('stg_token_transfers')}}
{% endset %}

{{ log(query, info = True )) }}

{% endmacro %}
```

- And run eth_activity_per_day again
- To run the macro on its own:


	`dbt run-operation random_macro`