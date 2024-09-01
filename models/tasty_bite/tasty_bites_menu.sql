select
    MENU_ID,
    MENU_TYPE,
    MENU_ITEM_ID,
    MENU_ITEM_NAME
from {{ref('menu_src')}}


