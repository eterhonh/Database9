SELECT Campus_Eats_Fall2020.order.order_id, total_price, ratings_id, driver_id, driver_comment 
FROM Campus_Eats_Fall2020.order, Campus_Eats_Fall2020.ratings
WHERE total_price > 5 AND ratings_id > 3
ORDER BY total_price desc
LIMIT 5;