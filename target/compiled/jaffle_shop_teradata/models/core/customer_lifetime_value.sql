



select
    orders.customer_key,
    --Incremental load: compute the customer value as of date
    sum(amount_usd) as total_amount_usd,
    period(max(order_date), ('9999-12-31' (date))) valid_period

from "demo_user"."lim_payments" payments
left join  "demo_user"."lim_orders" orders on payments.order_id = orders.id


group by customer_key
