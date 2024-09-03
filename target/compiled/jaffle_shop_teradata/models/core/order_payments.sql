

with payments as (

    select * from "demo_user"."lim_payments"

),

final as (

    select
        order_id,

        sum(case when payment_method = 'credit_card' then amount_usd else 0 end) as credit_card_amount_usd,
        sum(case when payment_method = 'coupon' then amount_usd else 0 end) as coupon_amount_usd,
        sum(case when payment_method = 'bank_transfer' then amount_usd else 0 end) as bank_transfer_amount_usd,
        sum(case when payment_method = 'gift_card' then amount_usd else 0 end) as gift_card_amount_usd,
        sum(amount_usd) as total_amount_usd

    from payments

    group by 1

)

select * from final