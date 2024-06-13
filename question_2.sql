--Which month in 2022 has had the highest revenue?

SELECT month_name 
FROM data_analytics_view
WHERE revenue = (SELECT max(revenue) FROM data_analytics_view)
AND year = 2022