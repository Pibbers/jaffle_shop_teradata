
  

  
  REPLACE VIEW "demo_user"."dim_customers__dbt_tmp" AS
    with customers as (
    
    select * from "demo_user"."key_customer"
    where domain_cd in ('retail', 'business')

),

customer_orders as (
    
    select
        customer_key,
        min(order_date) as first_order,
        max(order_date) as most_recent_order,
        count(id) as number_of_orders
    from "demo_user"."lim_orders"
    group by 1

),

customer_lifetime_value as (
     
    select * from "demo_user"."customer_lifetime_value"
    where customer_lifetime_value.valid_period contains current_date

),

final as (

    select
        customers.customer_key,
        customer_orders.first_order,
        customer_orders.most_recent_order,
        customer_orders.number_of_orders,
        customer_lifetime_value.total_amount_usd as customer_lifetime_value

    from customers

    left join customer_orders on customers.customer_key = customer_orders.customer_key
    left join customer_lifetime_value on customers.customer_key = customer_lifetime_value.customer_key

)

select * from final

