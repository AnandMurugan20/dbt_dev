select LISTING_ID,reviewer_name,sentiment,{{decode_fun('SENTIMENT')}} as grade
FROM {{ref('dim_reviews')}}