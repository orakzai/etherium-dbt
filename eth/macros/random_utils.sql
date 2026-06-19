{% macro random_macro() %}

{{log('bla', info=True)}}

{% set query %}

select
distinct
token_address
from {{ref('stg_token_transfers')}}
limit 10
{% endset %}

{{ log(query, info = True )}}

{% if execute %}
    -- {% do run_query(query) %} -- without ouput
    {% set result = run_query(query) %}
    {{ log(result, info = True) }}

    {% set result_list = result.columns[0].values() %}
    {{ log(result_list, info=True) }}

{% else %}
    {% set result_list = [] %}

{% endif %}


{% set sql = [] %}

{% for i in result_list %}
    {% do sql.append("'"~i~"'") %}
{% endfor %}
{{ log(sql | join(', '), info = True) }}

{{ return(sql | join(', '))}}



{% endmacro %}