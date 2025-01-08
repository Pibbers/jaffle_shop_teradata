
   
  
    
    

    INSERT INTO "jaffle_shop"."key_customer"
          



--Create the surrogate key table with default members if it doesn't exist
select
    -1 (integer) customer_key
    ,'UNKNOWN' (varchar(10000)) customer_nk
    ,'' (char(100)) domain_cd
    ,current_timestamp created_ts
from (sel 1 a) dummy
    ;
  

  
