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