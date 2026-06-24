# State		



        # depends on manifest.json file to be avalable in state folder
		dbt run -m state:modified --state state
		dbt run -m state:new --state state

		dbt run -m confirmed_frauds --target-path state

        # depends on result.json file to be avalable in state folder
        dbt run -m result:error --state state

        # Dry run
		dbt run --empty

        dbt retry

        dbt run -m result:error state:modified --state state

## Defer
    Create a new environment tom in profiles. use the enviroment and run a model only without ancestors
    after failure generate a prod manifest.json using below:
    		dbt compile --target prod
    Now we can use the prod models in tom profile 
    		dbt run -m confirmed_frauds --defer --state state

		https://docs.getdbt.com/reference/node-selection/defer
		https://docs.getdbt.com/reference/node-selection/configure-state


## Clone
- Make sure your prod environment materialization on your warehouse is up to date:

	git checkout master
	git pull
	dbt run --target prod

- Delete the current manifest.json file from the state folder and move the one produced by the previous command from target folder to state folder


- With tom profile targeted in profiles.yml, execute the following command to clone prod into tom environment:

		dbt clone --state state
        https://docs.getdbt.com/reference/commands/clone