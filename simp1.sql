SELECT Campus_Eats_Fall2020.order.order_id, total_price, ratings_id, driver_id, driver_comment
FROM Campus_Eats_Fall2020.order, Campus_Eats_Fall2020.ratings
WHERE driver_rating = '5'
ORDER BY total_price desc;
