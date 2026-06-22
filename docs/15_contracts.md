# Contracts

we can enforce contracts on specific models that are usually exposed to external clients.

  - name: stablecoin_activity_per_day
    config:
      contract:
        enforced: true
        alias_types: false
    columns:
      - name: hash

- you can specify `alias_types: false`. dbt will now pass on whatever type is specified to the dwh
- dbt doesn't really care about the size or precision e.g. varchar2(255) vs varchar (256)

- we can use versions and latest_version to define different versions of the contract and use macros to point to the desired version

- convention is to use _v1 in model names

- we can use deprecation date.

- we can compile specific versions

  dbt run --select dim_customers # Run all versions of the model
  dbt run --select dim_customers.v2 # Run a specific version of the model
  dbt run --select dim_customers_v2 # Alternative syntax for the specific version
  dbt run -s dim_customers,version:latest # Run the latest version of the model