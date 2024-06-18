CREATE VIEW data_analytics_view AS

SELECT order_date, 
       staff_numbers, 
       year,
       month_name,
       dim_product.sale_price, 
       cost_price,
       (dim_product.sale_price * product_quantity) as revenue,
       product_quantity,
       ((dim_product.sale_price - cost_price) * product_quantity) as profit,
       category,
       store_type, 
       country,
       full_region
FROM orders
INNER JOIN dim_date on orders.order_date = dim_date.date
INNER JOIN dim_product on orders.product_code = dim_product.product_code
INNER JOIN dim_store on orders.store_code = dim_store.store_code

