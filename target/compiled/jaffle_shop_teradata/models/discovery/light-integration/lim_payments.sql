/*
  Build a light integrated modeled layer from source image 
  for entity `payments`, performing: 
  - Data domain aligments (eg. using standard data types, units conversions, codes standardization...)
  - Naming conventions alignment
*/

sel
  id as payment_id,
  order_id,
  payment_method,
  --`amount` is currently stored in cents, so we convert it to dollars
  amount / 100 as amount_usd
  from "jaffle_shop"."sim_payments" s