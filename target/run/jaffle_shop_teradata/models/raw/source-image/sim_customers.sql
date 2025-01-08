
   
  
    
    

    INSERT INTO "jaffle_shop"."sim_customers"
          

-- Generic source image build for `customers` entity


select    
    customer_id,    
    first_name,    
    last_name,    
    email
    
,period(last_update_ts, '9999-12-31 23:59:59.999999+00:00' (timestamp)) as valid_period
from "jaffle_shop"."stg_customers" source
 
 
    ;
  

  
