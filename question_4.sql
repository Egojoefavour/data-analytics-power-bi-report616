--Create a view where the rows are the store types and the columns
--are the total sales, percentage of total sales and the count of orders
CREATE VIEW joe_sales_view AS
SELECT store_type, sale_price,
SUM(sale_price) as total_sales,
((sale_price * 100)/ SUM(sale_price)) AS percentage_total_sales,
COUNT(*) AS count_orders
FROM data_analytics_view
GROUP BY store_type, sale_price
ORDER BY total_sales DESC


--SELECT * FROM joe_sales_view