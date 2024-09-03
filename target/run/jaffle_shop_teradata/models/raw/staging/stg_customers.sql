
  

  
  REPLACE VIEW "demo_user"."stg_customers__dbt_tmp" AS
    locking row for access
select
    id as customer_id,
    first_name (varchar(1000)),
    last_name (varchar(1000)),
    email (varchar(1000)),
    current_timestamp last_update_ts
from "demo_user"."raw_customers" source

