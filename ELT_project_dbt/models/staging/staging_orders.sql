--Renaming columns, lowercase column names and fixing data types
SELECT
    "ORDERID" AS order_id,
    "BRANCH_ID" AS branch_id,
    CAST("DATE_" AS DATE) AS date,
    "USERID" AS customer_id,
    CAST("NAMESURNAME" AS VARCHAR(50)) AS fullname,
    CAST("TOTALBASKET" AS DECIMAL) AS total_basket
FROM {{source('raw_data','orders')}}