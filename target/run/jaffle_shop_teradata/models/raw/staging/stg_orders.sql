
  

  
  REPLACE VIEW "demo_user"."stg_orders__dbt_tmp" AS
    locking row for access
select
    source.*,
    current_timestamp last_update_ts
from "demo_user"."raw_orders" source

