
  

  
  REPLACE VIEW "demo_user"."stg_payments__dbt_tmp" AS
    locking row for access
select
source.*
,'2024-09-03 09:36:20.583062+00:00' (timestamp) last_update_ts
from  "demo_user"."raw_payments" source

