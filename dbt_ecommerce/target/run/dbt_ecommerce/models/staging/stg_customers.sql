
  create or replace   view ECOMMERCE_DB.analytics.stg_customers
  
  
  
  
  as (
    select *
from raw.customers
  );

