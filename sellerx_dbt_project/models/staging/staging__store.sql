{{ config(
    materialized="dynamic_table",
    on_configuration_change="apply",  
    target_lag="downstream",
    snowflake_warehouse="sellerx_wh",
    refresh_mode="INCREMENTAL",
    initialize="ON_CREATE",
    tags=['sellerx']
) }}
-- on_configuration_change="apply" | currently available to materialized views only

select
  id
  , name
  , address
  , city
  , country
  , created_at
  , typology
  , customer_id
  , source_file_name
  , source_file_last_modified_timestamp
  , source_file_start_scan_time
from {{ source('sellerx_raw_data', 'src_store') }} as store
where 1=1
    and {{ incremental_filter(table_alias="store") }}