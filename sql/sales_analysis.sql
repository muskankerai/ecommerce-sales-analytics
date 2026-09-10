-- E-Commerce Sales Analytics
-- SQL Business Analysis

-- 1. Total Revenue
SELECT
    SUM(Revenue) AS Total_Revenue
FROM ecommerce_sales;


-- 2. Total Orders
SELECT
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM ecommerce_sales;


-- 3. Total Customers
SELECT
    COUNT(DISTINCT CustomerID) AS Total_Customers
FROM ecommerce_sales;


-- 4. Average Order Value
SELECT
    SUM(Revenue) / COUNT(DISTINCT InvoiceNo) AS Average_Order_Value
FROM ecommerce_sales;


-- 5. Top 10 Products by Revenue
SELECT
    Description,
    SUM(Revenue) AS Total_Revenue
FROM ecommerce_sales
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;


-- 6. Revenue by Country
SELECT
    Country,
    SUM(Revenue) AS Total_Revenue
FROM ecommerce_sales
GROUP BY Country
ORDER BY Total_Revenue DESC;


-- 7. Monthly Revenue
SELECT
    Year,
    Month,
    Month_Name,
    SUM(Revenue) AS Monthly_Revenue
FROM ecommerce_sales
GROUP BY Year, Month, Month_Name
ORDER BY Year, Month;


-- 8. Top 10 Customers by Revenue
SELECT
    CustomerID,
    SUM(Revenue) AS Customer_Revenue
FROM ecommerce_sales
GROUP BY CustomerID
ORDER BY Customer_Revenue DESC
LIMIT 10;
