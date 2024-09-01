select 
ORDER_ID,
USER_ID,
STATUS,
GENDER,
{{varchar_to_date('created_at')}} AS created_dt,
{{varchar_to_date('returned_at')}} AS returned_dt,
{{varchar_to_date('shipped_at')}} as shipped_dt,
{{varchar_to_date('DELIVERED_AT')}} as delivered_dt,
NUM_OF_ITEM 
from {{source('LOOK_ECOMMERCE','orders')}}