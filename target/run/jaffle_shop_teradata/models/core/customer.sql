
  

  
  REPLACE VIEW "demo_user"."customer__dbt_tmp" AS
    

locking row for access
select
    customer_key,
    substr(customer_nk,1,3)||'***' email
from "demo_user"."key_customer"
where domain_cd = 'retail'

