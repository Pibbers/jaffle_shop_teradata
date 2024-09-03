

-- Source image build for `payments` entity

select source.*
from "demo_user"."stg_payments" source-- Load is incremental and source has a standard record 
-- landing timestamp, so get delta
where source.last_update_ts > (select max(last_update_ts) from "demo_user"."sim_payments")
