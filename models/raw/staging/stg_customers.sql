{#/*
This is a staging model. 
All we do is:
- Point to incoming data (from an external storage or loaded by a tool),
- Add standard control columns for this layer (eg. when was the record received),
- If necesary, override physical data types (eg. if not properly preserved by the E/L tools).
*/#}

{#/*- 
In this example we are loading from a seed, 
apply some data type casting
and mock the record update time with the read current time
(in order toto illustrate delta capture downstream) 
-*/#}
locking row for access
select
    id as customer_id,
    first_name (varchar(1000)),
    last_name (varchar(1000)),
    email (varchar(1000))
    {%- if  var('last_update_ts') -%}
    ,
    current_timestamp {{var('last_update_ts')}}
    {%- endif %}
from {{ ref('raw_customers') }} source
