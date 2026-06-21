we can use packages from dbt hub
copy the installation entries for the package under packages: in packages.yml file

    packages:
    - package: dbt-labs/dbt_utils
        version: 1.4.0

Run: 

    dbt deps

now any macro can be used from that package. 
also we can overwrite the package by copying it in the macro directory and making
it higher priority by using dispatch


    dispatch:
    - macro_namespace: dbt_utils
        search_order: ['eth', 'dbt_utils']