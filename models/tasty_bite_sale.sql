select
    MENU_ID,
    MENU_TYPE,
    TRUCK_BRAND_NAME,
    MENU_ITEM_ID,
    MENU_ITEM_NAME,
    ITEM_CATEGORY,
    ITEM_SUBCATEGORY,
    COST_OF_GOODS_USD as cost,
    SALE_PRICE_USD as sale_price
from {{ref('menu_src')}}