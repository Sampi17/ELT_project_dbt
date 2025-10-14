--Renaming columns, lowercase column names and fixing data types
SELECT 
    "ORDERID" AS order_id,
    "ORDERDETAILID" AS order_details_id,
    CAST("UNITPRICE" AS DECIMAL) AS unit_price,
    CAST("TOTALPRICE" AS DECIMAL) AS total_price,
    "ITEMID" AS category_id,
    "ITEMCODE" AS product_id
FROM {{source('raw_data', 'order_details')}}