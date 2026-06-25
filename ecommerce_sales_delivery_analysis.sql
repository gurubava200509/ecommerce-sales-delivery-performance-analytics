use retail_analysis;
-- Total Orders
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM olist_orders_dataset;

-- Total Customers
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM olist_orders_dataset;

-- Order Status Distribution
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY total_orders DESC;

-- Average Delivery Days
SELECT 
    ROUND(AVG(delivery_days), 2) AS avg_delivery_days
FROM olist_orders_dataset;

-- Late Delivery Percentage
SELECT 
    ROUND(
        (SUM(CASE WHEN delivery_delay > 0 THEN 1 ELSE 0 END) * 100.0)
        / COUNT(*),
        2
    ) AS late_delivery_percentage
FROM olist_orders_dataset;

-- Monthly Orders Trend
SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS order_month,
    COUNT(DISTINCT order_id) AS total_orders
FROM olist_orders_dataset
GROUP BY order_month
ORDER BY order_month;

-- Orders Delivered Late
SELECT 
    COUNT(*) AS late_orders
FROM olist_orders_dataset
WHERE delivery_delay > 0;

-- Orders Delivered On Time
SELECT 
    COUNT(*) AS on_time_orders
FROM olist_orders_dataset
WHERE delivery_delay <= 0;

-- Top 10 Recent Orders
SELECT 
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp,
    delivery_days
FROM olist_orders_dataset
ORDER BY order_purchase_timestamp DESC
LIMIT 10;

-- Delivery Performance by Status
SELECT 
    order_status,
    ROUND(AVG(delivery_days), 2) AS avg_delivery_days,
    COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY total_orders DESC;
