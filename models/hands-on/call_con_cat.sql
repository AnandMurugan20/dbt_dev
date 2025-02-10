select {{con_cat('REVIEWER_NAME','SENTIMENT')}} AS NEW_FIELD
 from {{ref('dim_reviews')}}