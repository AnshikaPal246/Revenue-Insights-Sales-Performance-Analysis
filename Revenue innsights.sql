CREATE DATABASE superstore_db;
USE superstore_db;
SHOW DATABASES;
SELECT * FROM superstore_cleaned LIMIT 10;
SELECT SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit,
COUNT(*) AS Total_Rows
FROM superstore_cleaned;
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT Category,
       AVG(Discount) AS Avg_Discount
FROM superstore_cleaned
GROUP BY Category
ORDER BY Avg_Discount DESC;
SELECT Category,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Category;
SELECT Region,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT 'Sub_Category',
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit,
       SUM(Quantity) AS Total_Quantity
FROM superstore_cleaned
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;
SELECT Segment,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT State,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY State
ORDER BY Total_Sales DESC;


