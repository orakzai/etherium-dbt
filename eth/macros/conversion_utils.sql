{%- macro etherium_conversion(column_name) -%}

sum({{column_name}})/1e18 

{%- endmacro -%}

{%- macro conversion(column_name, factor) -%}

sum({{column_name}})/1e{{factor}} 

{%- endmacro -%}