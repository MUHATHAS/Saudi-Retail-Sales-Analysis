CREATE DATABASE SaudiRetailDB;
USE SaudiRetailDB;
CREATE TABLE SalesTransactions (
    TransactionID INT PRIMARY KEY,
    TransactionDate DATE,
    City VARCHAR(50),
    Category VARCHAR(50),
    Product VARCHAR(100),
    UnitPrice_SAR DECIMAL(10, 2),
    Quantity INT,
    TotalSales_SAR DECIMAL(10, 2),
    PaymentMethod VARCHAR(50)
);
select * from salesTransactions;
SELECT 
    SUM(TotalSales_SAR) AS Total_Revenue_SAR,
    COUNT(TransactionID) AS Total_Orders,
    SUM(Quantity) AS Total_Items_Sold,
    ROUND(AVG(TotalSales_SAR), 2) AS Average_Order_Value_SAR
FROM SalesTransactions;
SELECT 
    City,
    SUM(TotalSales_SAR) AS City_Revenue_SAR,
    COUNT(TransactionID) AS Order_Count,
    ROUND((SUM(TotalSales_SAR) / (SELECT SUM(TotalSales_SAR) FROM SalesTransactions)) * 100, 2) AS Revenue_Contribution_Percent
FROM SalesTransactions
GROUP BY City
ORDER BY City_Revenue_SAR DESC;
SELECT 
    PaymentMethod,
    COUNT(TransactionID) AS Transaction_Count,
    SUM(TotalSales_SAR) AS Total_Processed_SAR
FROM SalesTransactions
GROUP BY PaymentMethod
ORDER BY Transaction_Count DESC;





