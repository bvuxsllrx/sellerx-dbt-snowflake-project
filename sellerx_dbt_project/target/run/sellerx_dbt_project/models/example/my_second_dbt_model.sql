
  create or replace   view sellerx_db.sellerx_sch.my_second_dbt_model
  
  
  
  
  as (
    -- Use the `ref` function to select from other models

select *
from sellerx_db.sellerx_sch.my_first_dbt_model
where id = 1
  );

