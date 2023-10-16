WITH hotels as (
Select * from h2018 UNION
Select * from h2019 UNION
Select * from h2020 ) 
Select arrival_date_year, hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr) )
AS revenue 
FROM hotels
GROUP BY arrival_date_year, hotel;

SELECT * FROM market_segment;
WITH hotels as (
Select * from h2018 UNION
Select * from h2019 UNION
Select * from h2020 ) SELECT * FROM hotels h
left join market_segment ms ON h.market_segment = ms.market_segment
Left join meal_cost mc ON mc.meal = h.meal ;