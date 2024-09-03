
  

  
  REPLACE VIEW "demo_user"."lim_market_customers__dbt_tmp" AS
    /*
  Build a light integrated modeled layer from source image 
  for entity `market_customers`, performing: 
  - Data domain aligments (eg. using standard data types, units conversions, codes standardization...)
*/

select
spend,
nearby5,
nearby10,
new ST_GEOMETRY(ptLocWkt) location_pt
from "demo_user"."raw_market_customers" s

