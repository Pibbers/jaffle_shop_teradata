
   
    INSERT INTO "demo_user"."lim_customers" ("customer_id", "first_name", "email", "valid_period", "customer_key", "family_key")
       SELECT "customer_id", "first_name", "email", "valid_period", "customer_key", "family_key"
       FROM "demo_user"."lim_customers__dbt_tmp"
    ;
