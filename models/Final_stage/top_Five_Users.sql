with CTE as(
 SELECT
    user_id,
    SUM(sale_price) AS total_sale_price
    FROM {{ref('order_items_STG_2')}}
    where status not in( 'Cancelled', 'Returned')
    GROUP BY user_id
    order by total_sale_price desc
)
select
 first_name, 
 last_name,
 a.total_sale_price 
 from {{ref('Stg_Users')}} as u
 join CTE a on u.id =a.user_id
 order by a.total_sale_price desc
 limit 5
 