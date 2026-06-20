we can define variables in the project.yml file
vars:
    x: a
    y: b

and later use them in the models

    {{ var('x') }}

we can also use them to define alias - the name the table is going to materialize in 