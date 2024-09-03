
  

  
  REPLACE VIEW "demo_user"."dim_payment_method__dbt_tmp" AS
    with payments as (

    select * from "demo_user"."lim_payments"

),

final as (

    select
        payment_method
        ,sum(amount_usd) as total_amount
        ,count(1) as frequency_count
    from payments
    group by 1

)

select * from final

