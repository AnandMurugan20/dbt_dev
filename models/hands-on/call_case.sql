select LISTINGS_ID,PRICE,{{ case_mac('PRICE') }} as price_range
FROM {{ref('dim_listings')}}
