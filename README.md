# Burger_Sales-SQL-MS-EXCEL-project

Project Overview: Burger Sales Analysis Using SQL & Excel

The Burger Sales Project is an analysis of burger sales data using SQL queries and Excel for Key Performance Indicators (KPIs), Pivot Tables, and Dashboard creation. The data contains various attributes such as Burger ID, Order ID, Burger Name, Quantity, Order Date, Order Time, Unit Price, Total Price, Burger Size, Burger Category, and Burger Ingredients. The project focuses on understanding burger sales trends and evaluating key metrics to help drive business decisions.

Project Data Overview:

The dataset includes the following columns:

Burgerid: Unique identifier for each burger.
Orderid: Unique identifier for each order.
Burgernameid: Identifier for the type of burger.
Quantity: The number of burgers ordered.
Order_date: The date the order was placed.
Order_time: The time the order was placed.
Unitprice: The price per burger.
Totalprice: Total price for the order (Unitprice * Quantity).
Burgersize: The size of the burger (e.g., Small, Medium, Large).
Burgercategory: The category the burger belongs to (e.g., Classic, Gourmet).
Burgeringredients: Ingredients used in the burger (e.g., Beef, Chicken, Vegan).
Key Performance Indicators (KPIs)
The project aims to calculate the following KPIs using SQL queries and Excel:

Total Revenue: The total revenue generated from all burger sales.

SQL Query:

SELECT SUM(totalprice) AS total_revenue FROM sales;
Average Order Value (AOV): The average total order value for all orders.

SQL Query:

SELECT AVG(totalprice) AS avg_order_value FROM sales;
Total Burger Sold: The total number of burgers sold across all orders.

SQL Query:

SELECT SUM(quantity) AS total_burger_sold FROM sales;
Total Orders: The total number of orders placed.

SQL Query:

SELECT COUNT(DISTINCT orderid) AS total_orders FROM sales;
Average Burger Per Order: The average number of burgers ordered per order.

SQL Query:

SELECT AVG(quantity) AS avg_burger_per_order FROM sales;
Data Analysis with SQL
The data is queried using SQL to extract relevant metrics for each KPI. SQL provides an efficient way to summarize and analyze large volumes of sales data.

Total Revenue is calculated by summing the totalprice field.
Average Order Value is calculated by averaging the totalprice per order.
Total Burger Sold is obtained by summing the quantity of all burgers sold.
Total Orders are counted by finding distinct orderid values.
Average Burger Per Order is computed by averaging the quantity field for all orders.
Data Analysis with Excel
Once the SQL queries return the necessary data, it is imported into Excel for deeper analysis. Pivot Tables, KPIs, and Charts are used to visualize the data and extract actionable insights.

Excel Pivot Tables:

Pivot Tables are used to organize the data and make it easier to analyze:

1.Total Revenue by Burger Category: Summarizes total revenue by burger category.
2.Burger Sales by Size: Displays the total number of burgers sold by size.
3.Order Trends by Date and Time: Analyzes the order trends over time, broken down by both date and time.
4.Sales Analysis by Ingredients: Evaluates which ingredients are most frequently used in burger sales.
5.Excel KPIs

KPIs are calculated and displayed on the Excel Dashboard using formulas and Pivot Tables:

1.Total Revenue: Sum of all totalprice.
2.Average Order Value: Average of all totalprice.
3.Total Burger Sold: Sum of all quantity.
4.Total Orders: Count of unique orderid.
5.Average Burger Per Order: Average of all quantity values.

Charts and Visualizations:

In the dashboard, various charts are created to provide a clear visual understanding of the sales trends and patterns. Below are the required charts for the project:

1. Daily Trend for Total Orders (Bar Chart)
Description: A Bar Chart shows the number of total orders per day.
Excel Steps:
Create a Pivot Table with order_date as the row and orderid (Count) as the value.
Insert a Bar Chart to display the daily order trend.

2. Hourly Trend for Total Orders (Line Chart)
Description: A Line Chart shows how the number of orders varies by hour.
Excel Steps:
Create a Pivot Table with ordertime (hour) as the row and orderid (Count) as the value.
Insert a Line Chart to display hourly trends.

3. Percentage of Sales by Burger Category (Pie Chart)
Description: A Pie Chart shows the percentage of total sales by burger category.
Excel Steps:
Create a Pivot Table with burgercategory as the row and totalprice (Sum) as the value.
Insert a Pie Chart to display sales distribution across categories.

5. Percentage of Sales by Burger Size (Pie Chart)
Description: A Pie Chart displays the percentage of total sales by burger size.
Excel Steps:
Create a Pivot Table with burgersize as the row and totalprice (Sum) as the value.
Insert a Pie Chart to show the sales by burger size.

6. Total Burger Sold by Burger Category (Bar Chart)
Description: A Bar Chart compares the total number of burgers sold by each burger category.
Excel Steps:
Create a Pivot Table with burgercategory as the row and quantity (Sum) as the value.
Insert a Bar Chart to visualize burger sales by category.

7. Top 5 Best Sellers by Total Burger Sold (Pie Chart)
Description: A Pie Chart shows the top 5 best-selling burgers by total number sold.
Excel Steps:
Create a Pivot Table with burgernameid as the row and quantity (Sum) as the value.
Sort by quantity in descending order and select the top 5 best-sellers.
Insert a Pie Chart for visual representation.

8. Bottom 5 Worst Sellers by Total Burger Sold (Bar Chart)
Description: A Bar Chart displays the bottom 5 worst-selling burgers by total number sold.
Excel Steps:
Similar to the best-seller chart, create a Pivot Table for burgernameid and quantity (Sum).
Sort by quantity in ascending order and select the bottom 5.
Insert a Bar Chart to display the worst sellers.

Conclusion and Insights:
SQL helped in summarizing and querying the burger sales data efficiently, allowing for the calculation of KPIs like total revenue, average order value, total burgers sold, total orders, and average burgers per order.
Excel provided a platform for analyzing and visualizing the data with Pivot Tables, KPIs, and interactive charts, allowing the project to generate useful insights, including:
Sales trends over time (daily and hourly).
Burger category and size sales distribution.
Top and bottom-selling burgers.
These visualizations and KPIs can help business owners understand which products are most popular, how orders vary over time, and identify areas for potential improvements in sales strategies.
