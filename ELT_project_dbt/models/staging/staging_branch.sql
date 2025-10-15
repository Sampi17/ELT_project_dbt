--Renaming columns, lowercase column names and fixing data types
SELECT       
    "BRANCH_ID"  as store_id, 
    CAST("REGION" AS VARCHAR(50)) as region,
    CAST("CITY" AS VARCHAR(50)) as city,
    CAST("TOWN" AS VARCHAR(50))  as surburb, 
    CAST("BRANCH_TOWN" AS VARCHAR(50)) as branch_surburb
FROM {{source('raw_data','branche')}}