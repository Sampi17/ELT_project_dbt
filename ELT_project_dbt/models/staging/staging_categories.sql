--Renaming columns, lowercase column names and fixing data types
SELECT 
    "ITEMID" AS category_id,
    CAST("CATEGORY1" AS VARCHAR(50)) AS deparment,
    CAST("CATEGORY2" AS VARCHAR(50)) AS category,
    CAST("CATEGORY3" AS VARCHAR(50)) AS sub_category,
    CAST("CATEGORY4" AS VARCHAR(50)) AS product_category,
    CAST("BRAND" AS VARCHAR(50)) AS brand,
    "ITEMCODE" AS product_id,
    CAST("ITEMNAME" AS VARCHAR(50)) AS product_name 
FROM {{source('raw_data','categories')}}