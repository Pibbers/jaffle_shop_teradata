
  

  
  REPLACE VIEW "jaffle_shop"."stg_orders__dbt_tmp" AS
    locking row for access
select
    source.*,
    current_timestamp last_update_ts
from "jaffle_shop"."raw_orders" source

