
  create or replace   view ECOMMERCE_DB.analytics.stg_shipments
  
  
  
  
  as (
    select *
from raw.shipments
  );

