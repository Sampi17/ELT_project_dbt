--creating dim_category table 
CREATE TABLE dim_category AS
SELECT 
    category_id,
    category,
    sub_category
FROM {{ref('staging_categories')}}