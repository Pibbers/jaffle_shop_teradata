
   insert into "demo_user"."key_customer" ("customer_key", "customer_nk", "domain_cd", "created_ts")
        select "customer_key", "customer_nk", "domain_cd", "created_ts"
        from "demo_user"."key_customer__dbt_tmp"
    

