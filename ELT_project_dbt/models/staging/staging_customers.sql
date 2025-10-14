--Renaming columns, lowercase column names and fixing data types
SELECT 
    "USERID" AS customer_id,
    CAST("USERNAME_" AS VARCHAR(50)) AS username,
    CAST("NAMESURNAME" AS VARCHAR(50)) AS fullname,
    "STATUS_" AS status,
    CAST("USERGENDER" AS VARCHAR(50)) AS gender,
    CAST("USERBIRTHDATE" AS DATE) AS birth_date,
    CAST("REGION" AS VARCHAR(50)) AS region,
    CAST("CITY" AS VARCHAR(50)) AS city,
    CAST("TOWN" AS VARCHAR(50)) AS town,
    CAST("DISTRICT" AS VARCHAR(50)) AS district,
    CAST("ADDRESSTEXT" AS VARCHAR(50)) AS full_address
FROM {{source('raw_data','customers')}}