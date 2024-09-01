with CTE as (
select product_id,sum(sale_price)as total_amount 
from {{ref('order_items_STG_2')}}
where status not in ('Cancelled', 'Returned')
group by product_id
order by total_amount desc
)
select 
p.category,sum(c.total_amount)as revenue
from {{ref('Stg_Products')}} as p join CTE as c on p.id = c.product_id
group by p.category
order by revenue desc
limit 5
