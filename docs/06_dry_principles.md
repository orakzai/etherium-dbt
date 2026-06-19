# DRY

## Directory structures
https://www.getdbt.com/blog/modular-data-modeling-techniques

put sources in base directory
have an intermediate or staging directory for light transformations
marts directory can be used for full transformations
rpt can be used for exposed reports

## Tags
use tags where ever possible
can be defined in projects.yml file
can also be defined in individual models at the top

{{ config(tags=['daily'] ) }}
 
dbt run -s tag:daily

Tags are additive