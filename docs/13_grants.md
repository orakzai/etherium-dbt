# Grants

we can specify grants to models in the config block as well as the project or schema .yml files

      stablecoin_activity_per_day:
        +post-hook:
          - GRANT USAGE ON DATABASE DP_DBT TO ROLE TESTER;
          - GRANT USAGE ON SCHEMA DP_DBT.SCH_ALI_MART TO ROLE TESTER;
          - GRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE TESTER;
          - GRANT USAGE ON DATABASE DP_DBT TO ROLE BA;
          - GRANT USAGE ON SCHEMA DP_DBT.SCH_ALI_MART TO ROLE BA;
          - GRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE BA;
        +grants:
          select: ['BA']

{{ config(tags=['stablecoin'], grants = {'+select': ['TESTER'] } ) }}

Notice the + before select. it makes it additive instead of replacing