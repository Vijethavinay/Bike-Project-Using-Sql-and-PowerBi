with cte as ( 
Select * from bike_share_yr_0
union 
Select * from bike_share_yr_1)

Select 
dteday, season, a.yr, weekday,hr, rider_type,riders, price, COGS, 
riders*price as revenue,
riders*price-COGS*price as profit
from cte a
left join cost_table b
on a.yr=b.yr

Select * from cost_table




