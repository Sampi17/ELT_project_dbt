--Creating stores dimension from staging_branch
CREATE TABLE  dim_stores AS
SELECT * 
FROM {{ref('staging_branch')}}