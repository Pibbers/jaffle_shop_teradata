
  

  
  REPLACE VIEW "jaffle_shop"."stg_market_customers__dbt_tmp" AS
    



with source as (
    select * from "demo_user"."raw_market_customers"

),

renamed as 
(
    select
    source.*
    from source

)

select * from renamed

