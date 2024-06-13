--How many staff are there in all of the UK stores?

SELECT SUM(staff_numbers) 
FROM data_analytics_view
WHERE country LIKE 'UK'