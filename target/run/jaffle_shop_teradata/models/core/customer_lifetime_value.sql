
   
  
    
    

    INSERT INTO "jaffle_shop"."customer_lifetime_value"
          



select
    orders.customer_key,
    --Full load: compute the historical customer value history    
    sum(sum(amount_usd)) over(partition by orders.customer_key order by order_date ROWS UNBOUNDED PRECEDING) total_amount_usd,
    period(
        order_date, 
        coalesce(lead(order_date) over(partition by orders.customer_key order by order_date) , ('9999-12-31' (date)))
        ) valid_period

from "jaffle_shop"."lim_payments" payments
left join  "jaffle_shop"."lim_orders" orders on payments.order_id = orders.id


group by orders.customer_key, order_date

    ;
  

  
