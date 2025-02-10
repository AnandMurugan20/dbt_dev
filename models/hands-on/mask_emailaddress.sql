select listing_id,date,reviewer_name,comments,{{mask_email('comments')}} as masked_rvname
 from {{ref('dim_reviews')}}