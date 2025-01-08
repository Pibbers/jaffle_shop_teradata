
  

  
  REPLACE VIEW "jaffle_shop"."stg_payments__dbt_tmp" AS
    locking row for access
select
source.*
,'2025-01-08 15:12:10.929274+00:00' (timestamp) last_update_ts
from  "jaffle_shop"."raw_payments" source

