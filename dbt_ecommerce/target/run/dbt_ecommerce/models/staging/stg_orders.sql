
  create or replace   view ECOMMERCE_DB.analytics.stg_orders
  
  
  
  
  as (
    select *
from raw.orders
  );

