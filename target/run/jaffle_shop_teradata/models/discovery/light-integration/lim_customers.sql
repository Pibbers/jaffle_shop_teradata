
   
  
    
    

    INSERT INTO "jaffle_shop"."lim_customers"
          /*
  Build a light integrated modeled layer from source image 
  for entity `customers`, performing: 
  - Data domain aligments (eg. using standard data types, units conversions, codes standardization...)
  - Surrogate key assigment
  - Naming conventions alignment
*/










with source as
(
  select
  s.*
  from "jaffle_shop"."sim_customers" s
  where valid_period contains current_timestamp
)
select
    --Value columns
      customer_id,
      first_name,
      email,
      valid_period
    --Surrogate key columns
    ,coalesce(customer.customer_key,-1) customer_key
    ,coalesce(family.customer_key,-1) family_key
from source s
--Surrogate key joins
left join "jaffle_shop"."key_customer" customer
  on customer.customer_nk=coalesce(trim(email), '')
  and customer.domain_cd='retail'

left join "jaffle_shop"."key_customer" family
  on family.customer_nk=coalesce(trim(last_name), '')
  and family.domain_cd='families'



    ;
  

  
