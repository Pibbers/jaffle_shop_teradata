/*
  Build a light integrated modeled layer from source image 
  for entity `orders`, performing: 
  - Data domain aligments (eg. using standard data types, units conversions, codes standardization...)
  - Surrogate key assigment
  - Naming conventions alignment
*/

with source as
(
  select
  s.*  
  ,coalesce(c.email,'UNKNOWN') email
  from "demo_user"."sim_orders" s
  left join "demo_user"."sim_customers" c
    on c.customer_id=s.user_id
    and c.valid_period contains current_timestamp
)
select
    s.*
    --Surrogate key columns
    ,coalesce(customer.customer_key,-1) customer_key
from source s
--Surrogate key joins
left join "demo_user"."key_customer" customer
  on customer.customer_nk=coalesce(trim(email), '')
  and customer.domain_cd='retail'
