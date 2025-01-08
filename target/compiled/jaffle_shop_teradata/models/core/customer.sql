

locking row for access
select
    customer_key,
    substr(customer_nk,1,3)||'***' email
from "jaffle_shop"."key_customer"
where domain_cd = 'retail'