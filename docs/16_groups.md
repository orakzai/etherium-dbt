# Groups

Group access is only meant for models access within dbt project access. It is different from user access which is at the dwh level

public - other projects can access the model
protected - other models in the same project can access the model
private - only group members can access the model

Define groups.yml file with the group names and owners
then use the groups definitions in models

{{ config(group = 'fraud_risk', access='protected') }}


		https://docs.getdbt.com/docs/mesh/govern/project-dependencies
		
		https://docs.getdbt.com/docs/mesh/govern/model-access
