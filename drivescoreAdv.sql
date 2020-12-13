SELECT Campus_Eats_Fall2020.order.order_id, total_price, ratings_id, driver_id, driver_comment, driver_rating,

CASE
	WHEN (driver_rating > 3) THEN 'Great Job'
    ELSE 'Try again next time'
   END AS `driver_score` 
  
FROM Campus_Eats_Fall2020.order, Campus_Eats_Fall2020.ratings;

