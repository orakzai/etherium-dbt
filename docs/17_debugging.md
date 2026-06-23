# Logs

		dbt run -m confirmed_frauds --log-level error

        error/warn/info/none

        # Below command will show the debug logs in the terminal
        dbt run --debug

        # dont mix with below command, it only checks the connectivity and configurations
        dbt debug 
dbt debug --config-dir # to find the profiles.yml file

- To change the format output of your logs to json:
	dbt run -m confirmed_frauds --log-format-file json

dbt compile -s confirmed_frauds will compile and show the query that will get executed against the dwh

compiled code can also be found under target/compiled/<project>/<models>/...

Step - Error -> Description

Runtime     - Initialize -> Check that this a dbt project, and that dbt can connect to the warehouse
Compilation - Parsing -> Check that the Jinja snippets in .yml and .sql files valid
Graph
validation - Dependency -> Compile the dependencies into a graph. Check that it's acyclic.

SQL execution - Database Error -> Run the models




        https://docs.getdbt.com/guides/debug-errors?step=1



