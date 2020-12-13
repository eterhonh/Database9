CREATE DEFINER=`root`@`localhost` PROCEDURE `great_driver`()
BEGIN
select o.order_id,
    CASE
		WHEN now()-r.driver_rating > 3 THEN 'keep up the work!'
	END AS BestRating
	from Campus_Eats_Fall2020.order as o join Campus_Eats_Fall2020.ratings as r on o.order_id = r.order_id;
    
	commit;
END
