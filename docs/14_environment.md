# Environment

We can specify multiple environments in the profiles yaml file. and specify the default target there as well.

we can also specify the target in the commands

dbt seed --target prod
dbt run --target prod

dbt will NOT create the database though. 

## Use target.name to limit data in dev

```
select
  *
from source('web_events', 'page_views')
{% if target.name == 'dev' %}
where created_at >= dateadd('day', -3, current_date)
{% endif %}

```
## Use target.name to change your source database

```
sources:
  - name: source_name 
    database: |
      {%- if  target.name == "dev" -%} raw_dev
      {%- elif target.name == "qa"  -%} raw_qa
      {%- elif target.name == "prod"  -%} raw_prod
      {%- else -%} invalid_database
      {%- endif -%}
    schema: source_schema
```