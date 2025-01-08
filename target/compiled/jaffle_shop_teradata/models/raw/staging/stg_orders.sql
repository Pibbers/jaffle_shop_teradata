locking row for access
select
    source.*,
    current_timestamp last_update_ts
from "jaffle_shop"."raw_orders" source