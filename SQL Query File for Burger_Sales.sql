USE Burger_SalesDB;

SELECT * FROM Burger_sales;

--- KPI's REQUIRMENT ---

---1.Total Revenue: The sum of the total price of all burger orders.

CREATE VIEW TOTAL_REVENUE AS
SELECT SUM(total_price) AS Total_Revenue
FROM Burger_sales;

SELECT * FROM TOTAL_REVENUE;

---2.Average Order Value: The average amount spent per order is calculated by dividing the total revenue by the total number of orders.

CREATE VIEW AVERAGE_ORDER_VALUE AS 
SELECT (SUM(total_price)/ COUNT(DISTINCT order_id)) AS Avg_order_Value
FROM Burger_sales;

SELECT * FROM AVERAGE_ORDER_VALUE;

---3. Total Burger Sold: The sum of the quantities of all burger sold.

CREATE VIEW TOTAL_BURGER_SOLD AS 
SELECT SUM(quantity) AS Total_Burger_Sold
FROM Burger_sales;

SELECT * FROM TOTAL_BURGER_SOLD;

SELECT * FROM Burger_sales;

---4: Total orders

CREATE VIEW TOTAL_ORDERS  AS
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM Burger_sales;

SELECT * FROM TOTAL_ORDERS;

---5: Average Burger per order

CREATE VIEW AVERAGE_BURGER_PER_ORDER AS
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL (10,2)) Avg_Burger_Per_Order
FROM Burger_sales;

SELECT * FROM AVERAGE_BURGER_PER_ORDER;

--- Charts Requriement
---A. Daily Trend for Total Orders

CREATE VIEW DAILY_TREND_FOR_TOTAL_ORDERS AS
SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS Total_orders
FROM Burger_sales
GROUP BY DATENAME(DW, order_date);

SELECT * FROM DAILY_TREND_FOR_TOTAL_ORDERS;

---B: Hourly Trend for Orders

SELECT DATEPART(HOUR, order_time) AS order_hours, COUNT(DISTINCT order_id)
AS Total_orders
FROM Burger_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);

---C: % of Sales by Burger Category

CREATE VIEW PERCENTAGE_OF_SALES_BY_BURGER_CATEGORY AS
SELECT Burger_category, CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM Burger_sales)
AS DECIMAL(10,2)) AS PCT
FROM Burger_sales
GROUP BY Burger_category;

SELECT * FROM PERCENTAGE_OF_SALES_BY_BURGER_CATEGORY;

---D. % of Sales by Burger Size

SELECT Burger_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM Burger_sales)
AS DECIMAL(10,2)) AS PCT
FROM Burger_sales
GROUP BY Burger_size
ORDER BY Burger_size;

---E: Total Orders by Burger Category

SELECT Burger_category, SUM(quantity) AS Total_Quantity_Sold
FROM Burger_sales
WHERE MONTH(order_date) = 2
GROUP BY Burger_category
ORDER BY Total_Quantity_Sold DESC;


---F: Top 5 Best Sellers by Total Burger Sold

SELECT TOP 5 Burger_name, SUM(quantity) AS Total_Burger_Sold
FROM Burger_sales
GROUP BY Burger_name
ORDER BY Total_Burger_Sold DESC;

---G: Bottom 5 Best Sellers by Total Burger Sold

SELECT TOP 5 Burger_name, SUM(quantity) AS Total_Burger_Sold
FROM Burger_sales
GROUP BY Burger_name
ORDER BY Total_Burger_Sold ASC;


