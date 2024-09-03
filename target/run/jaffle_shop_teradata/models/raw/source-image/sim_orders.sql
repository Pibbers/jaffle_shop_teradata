
   
  
    
    

    INSERT INTO "demo_user"."sim_orders"
          

-- Generic source image build for `orders` entity


select    
    id,    
    user_id,    
    order_date,    
    status,    
    last_update_ts
from "demo_user"."stg_orders" source
 
 
    ;
  

  
