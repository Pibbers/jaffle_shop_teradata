



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