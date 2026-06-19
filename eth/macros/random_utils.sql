{% macro random_macro() %}

{{log('bla', info=True)}}

{% set query %}

select
distinct
token_address
from {{ref('stg_token_transfers')}}
{% endset %}

{{ log(query, info = True )}}

{% endmacro %}