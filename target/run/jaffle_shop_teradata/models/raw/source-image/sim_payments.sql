
   insert into "demo_user"."sim_payments" ("id", "order_id", "payment_method", "amount", "last_update_ts")
        select "id", "order_id", "payment_method", "amount", "last_update_ts"
        from "demo_user"."sim_payments__dbt_tmp"
    

