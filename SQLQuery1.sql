CREATE DATABASE SuperstoreDB;
GO

USE SuperstoreDB;

SELECT Region, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT Category, SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;


SELECT TOP 1 * FROM orders;

SELECT 
    FORMAT([Order_Date], 'yyyy-MM') AS [Month], 
    SUM([Sales]) AS [Monthly_Sales]
FROM 
    [orders]
GROUP BY 
    FORMAT([Order_Date], 'yyyy-MM')
ORDER BY 
    [Month];


SELECT TOP 10 
    [Product_Name], 
    SUM([Profit]) AS Total_Profit
FROM 
    [orders]
GROUP BY 
    [Product_Name]
ORDER BY 
    Total_Profit DESC;
