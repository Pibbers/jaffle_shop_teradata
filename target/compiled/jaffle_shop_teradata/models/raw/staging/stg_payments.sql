locking row for access
select
source.*
,'2024-09-03 15:14:50.043838+00:00' (timestamp) last_update_ts
from  "demo_user"."raw_payments" source