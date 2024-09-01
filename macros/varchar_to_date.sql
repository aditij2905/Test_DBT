{% macro varchar_to_date(column_name) %}
    To_date(substr({{column_name}},1,19),'YYYY-MM-DD HH24:MI:SS')
{% endmacro %}