{% macro incremental_filter(table_alias, column='source_file_last_modified_timestamp') %}
    {% if is_incremental() %}
        {{ table_alias }}.{{ column }} > ( 
            select coalesce(max({{ column }}), '1990-01-01 00:00:00') from {{ this }} 
        )
    {% else %}
        1=1
    {% endif %}
{% endmacro %}