
-- on_configuration_change="apply" | currently available to materialized views only

select
  id
  , device_id
  , product_name
  , product_sku
  , amount
  , status
  , card_number
  , cvv
  , created_at
  , happened_at
  , source_file_name
  , source_file_last_modified_timestamp
  , source_file_start_scan_time
from sellerx_db.sellerx_sch.src_transaction as transaction
where 1=1
    and 
    
        1=1
    
