--Which German store type had the highest revenue for 2022?

SELECT store_type,  sum(revenue) AS highest_revenue
FROM data_analytics_view
WHERE year = 2022
AND country LIKE 'Germany'
GROUP BY store_type
ORDER BY highest_revenue desc
LIMIT 1