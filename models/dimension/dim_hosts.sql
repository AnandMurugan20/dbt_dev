{{
    config(materialized='view')
}}

select 
HOST_ID,
UPPER(NAME) AS NAME,
CASE
    WHEN IS_SUPERHOST = 'f' THEN 'FALSE'
    ELSE 'TRUE'
END AS IS_SUPERHOST,
CREATED_AT,
UPDATED_AT
 FROM
{{ ref('stg_hosts') }}