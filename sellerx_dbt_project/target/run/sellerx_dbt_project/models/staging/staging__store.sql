
        

    
        create or replace dynamic table sellerx_db.sellerx_sch.staging__store
        target_lag = 'downstream'
        warehouse = sellerx_wh
        refresh_mode = INCREMENTAL

        initialize = ON_CREATE

        as (
            
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
from sellerx_db.sellerx_sch.src_store as store
where 1=1
    and 
    
        1=1
    

        )

    


    