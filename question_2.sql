--Which month in 2022 has had the highest revenue?

SELECT month_name, sum(revenue) AS highest_revenue 
FROM data_analytics_view
WHERE year = 2022
GROUP BY month_name
ORDER BY sum(revenue) DESC
LIMIT 1