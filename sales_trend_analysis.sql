-- Extract month and year from order date
SELECT extract(MONTH FROM order_date) as month
from orders_dataset;

-- Group by year and month, calculate revenue and order volume
Select month(order_date) as month,
year(order_date) as year,
SUM(amount) AS total_revenue,
count(order_id) AS order_volume
from orders_dataset
Group by year, month
order by year,month;

-- Monthly revenue
Select month(order_date) as month,
SUM(amount) AS total_revenue
from orders_dataset
group by month
order by month;

--  Monthly order volume only (using COUNT DISTINCT)
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders_dataset
GROUP BY year, month
ORDER BY year, month;

-- Sort by revenue (highest to lowest) using order by 
Select month(order_date) as month,
YEAR(order_date) as year,
SUM(amount) AS total_revenue
from orders_dataset
group by month, year
order by total_revenue DESC;

-- Limit results to a specific time period (example: only 2023 Q1)
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
    from orders_dataset
    WHERE order_date BETWEEN '2023-01-01' AND '2023-03-31'
group by month, year
ORDER BY month , year;

-- USING LIMIT ONLY
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders_dataset
GROUP BY year, month
ORDER BY year, month
LIMIT 3;

-- Top 3 months by sales (highest revenue months)
SELECT
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM orders_dataset
GROUP BY month
ORDER BY total_revenue desc
LIMIT 3;

-- Handling nulls in aggregate
SELECT 
      YEAR(order_date) as year,
      MONTH(order_date) AS month,
      COALESCE(SUM(amount),0) AS total_revenue,
      COALESCE(Count(order_id),0) AS order_volumme
From orders_dataset
GROUP BY year, month
ORDER BY year, month;