with hotels as (
select * from [Hotel database]..['2018$']
union
select * from [Hotel database]..['2019$']
union
select * from [Hotel database]..['2020$'])


--How much revenue does the Hotel make per year??
select arrival_date_year, hotel, 
round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) as revenue
from hotels
group by arrival_date_year, hotel


select * 
from hotels
left join [Hotel database]..market_segment$
on hotels.market_segment = market_segment$.market_segment
left join [Hotel database]..meal_cost$
on meal_cost$.meal = hotels.meal


