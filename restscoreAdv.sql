SELECT Campus_Eats_Fall2020.order.order_id, total_price, restaurant_name, ratings_id, restaurant_comment, restaurant_rating,

CASE
	WHEN (restaurant_rating > 3) THEN 'Great Job'
    ELSE 'Try again next time'
   END AS `rest_score` 
  
FROM Campus_Eats_Fall2020.order, Campus_Eats_Fall2020.ratings, Campus_Eats_Fall2020.restaurant
ORDER BY restaurant_name DESC
LIMIT 20;

