--creating product dimension table 
--CREATE TABLE dim_product AS
SELECT 
    product_id,
    brand,
    product_category,
    product_name
FROM {{ref('staging_categories')}}