
    

    insert into "demo_user"."key_customer"
    select
        rank() over(partition by domain_cd order by customer_nk) (integer) customer_key 
        ,nk (varchar(10000)) customer_nk
        ,domain_cd (char(100)) domain_cd
        ,current_timestamp created_ts
    from 
    (
        select coalesce(trim(email), '')||'|'||coalesce(trim(first_name), '') nk
        , 'retail' domain_cd 
        from "demo_user"."stg_customers"
        group by 1,2
    ) source
    where not exists
    (sel 1 from  "demo_user"."key_customer" k where k.customer_nk=source.nk and k.domain_cd=source.domain_cd )

