
--CREATE TABLE dim_customer AS
SELECT *
FROM {{ref('staging_customers')}}