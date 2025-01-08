
  

  
  REPLACE VIEW "jaffle_shop"."lim_market_competitors__dbt_tmp" AS
    /*
  Build a light integrated modeled layer from source image 
  for entity `market_competitors`, performing: 
  - Data domain aligments (eg. using standard data types, units conversions, codes standardization...)
*/

select new ST_GEOMETRY(ptLocWkt) competitor_location_pt
from "jaffle_shop"."stg_market_customers" s

