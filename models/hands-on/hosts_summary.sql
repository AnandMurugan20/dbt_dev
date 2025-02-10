 {{
    config(
        materialized='view')
 }}

with hosts as(
    select * from {{ source('raw', 'raw_hosts')}}
)

select * from hosts