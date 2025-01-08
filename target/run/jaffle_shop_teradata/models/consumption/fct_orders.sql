
  

  
  REPLACE VIEW "jaffle_shop"."fct_orders__dbt_tmp" AS
    

with orders as (

    select * from "jaffle_shop"."lim_orders"

),

order_payments as (

    select * from "jaffle_shop"."order_payments"

),

final as (

    select
        orders.customer_key,
        orders.order_date,
        orders.status,

        order_payments.credit_card_amount_usd,

        order_payments.coupon_amount_usd,

        order_payments.bank_transfer_amount_usd,

        order_payments.gift_card_amount_usd,

        order_payments.total_amount_usd as amount

    from orders

    left join order_payments on orders.id = order_payments.order_id

)

select * from final

