--Which product category generated the most profit for the 
--"Wiltshire, UK" region in 2021?

SELECT category, SUM(profit) as highest_profit
FROM data_analytics_view
WHERE year = 2021
AND full_region like 'Wiltshire, UK'
GROUP BY category
ORDER BY highest_profit DESC
LIMIT 1







