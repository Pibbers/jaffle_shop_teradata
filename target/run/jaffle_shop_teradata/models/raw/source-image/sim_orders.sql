
   
  
    
    

    INSERT INTO "jaffle_shop"."sim_orders"
          

-- Generic source image build for `orders` entity


select    
    id,    
    user_id,    
    order_date,    
    status,    
    last_update_ts
from "jaffle_shop"."stg_orders" source
 
 
    ;
  

  
