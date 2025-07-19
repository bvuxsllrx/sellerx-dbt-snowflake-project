
        

    
        create or replace dynamic table sellerx_db.sellerx_sch.staging__device
        target_lag = 'downstream'
        warehouse = sellerx_wh
        refresh_mode = INCREMENTAL

        initialize = ON_CREATE

        as (
            
-- on_configuration_change="apply" | currently available to materialized views only

select
  id
  , type
  , store_id
  , source_file_name
  , source_file_last_modified_timestamp
  , source_file_start_scan_time
from sellerx_db.sellerx_sch.src_device as device
where 1=1
    and 
    
        1=1
    

        )

    


    