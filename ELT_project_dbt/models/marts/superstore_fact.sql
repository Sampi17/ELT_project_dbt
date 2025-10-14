--CREATING FACT TABLE
CREATE TABLE superstore_fact AS
SELECT 
    od.order_id AS id,
    o.branch_id AS store_key,
    o.customer_id AS customer_key,
    od.category_id AS category_key,
    od.product_id AS product_key
    od.unit_price,
    od.total_price
    od.status
FROM {{ref('staging_order_details')}} od
LEFT JOIN {{ref('staging_orders')}} o
ON od.order_id = o.order_id 
