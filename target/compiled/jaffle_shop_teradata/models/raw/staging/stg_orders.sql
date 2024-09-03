locking row for access
select
    source.*,
    current_timestamp last_update_ts
from "demo_user"."raw_orders" source