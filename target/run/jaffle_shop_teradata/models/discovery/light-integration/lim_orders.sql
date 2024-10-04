
   
    INSERT INTO "demo_user"."lim_orders" ("id", "user_id", "order_date", "status", "last_update_ts", "email", "customer_key")
       SELECT "id", "user_id", "order_date", "status", "last_update_ts", "email", "customer_key"
       FROM "demo_user"."lim_orders__dbt_tmp"
    ;
