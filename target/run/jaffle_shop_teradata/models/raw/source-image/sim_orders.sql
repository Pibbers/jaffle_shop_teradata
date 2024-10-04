
   
    INSERT INTO "demo_user"."sim_orders" ("id", "user_id", "order_date", "status", "last_update_ts")
       SELECT "id", "user_id", "order_date", "status", "last_update_ts"
       FROM "demo_user"."sim_orders__dbt_tmp"
    ;
