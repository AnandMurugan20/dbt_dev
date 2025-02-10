SELECT 
ID AS LISTINGS_ID,
 LISTING_URL,
  initcap(NAME) AS NAME,
   upper(ROOM_TYPE) AS ROOM_TYPE,
    MINIMUM_NIGHTS,
     HOST_ID,
      replace(PRICE,'$')::int AS PRICE,
       CREATED_AT,
        UPDATED_AT
FROM AIRBNB.RAW.RAW_LISTINGS