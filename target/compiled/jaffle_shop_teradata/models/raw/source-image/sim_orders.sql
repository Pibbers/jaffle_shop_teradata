

-- Generic source image build for `orders` entity


select    
    id,    
    user_id,    
    order_date,    
    status,    
    last_update_ts
from "demo_user"."stg_orders" source
 
 -- Load is incremental and source has a standard record 
-- landing timestamp, so get delta
where source.last_update_ts >(select max(last_update_ts) from "demo_user"."sim_orders")