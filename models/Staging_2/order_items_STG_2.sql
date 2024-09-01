{{ 
    config(materialized='table')
}}

with RankedOrderItems AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY order_id ,product_id ORDER BY created_dt DESC) AS rn
    FROM {{ref('stg_order_items')}}
)
SELECT *
FROM RankedOrderItems 
WHERE rn = 1