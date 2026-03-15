-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales_dashboard_dataset;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_dashboard_dataset
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Monthly Sales Trend
SELECT DATE_TRUNC('month', Order_Date) AS Month,
SUM(Sales) AS Monthly_Sales
FROM sales_dashboard_dataset
GROUP BY Month
ORDER BY Month;

-- Top Products
SELECT Product, SUM(Sales) AS Total_Sales
FROM sales_dashboard_dataset
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 10;
