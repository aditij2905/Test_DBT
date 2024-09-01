select 
	ID,
	FIRST_NAME,
	LAST_NAME,
	EMAIL,
	AGE,
	GENDER,
	STATE,
	STREET_ADDRESS,
	POSTAL_CODE,
	CITY,
	COUNTRY,
	LATITUDE,
	LONGITUDE,
	TRAFFIC_SOURCE,
	{{varchar_to_date('created_at')}} AS created_dt
from {{source('LOOK_ECOMMERCE','users')}}
