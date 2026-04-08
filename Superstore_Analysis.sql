/* ==========================================================================
PROJECT: US Superstore Sales Analysis
GOAL: Clean data and extract business insights using SQL Server
AUTHOR: Farah
==========================================================================
*/

-- 1. DATA CLEANING & TRANSFORMATION
IF OBJECT_ID('superstore_clean', 'U') IS NOT NULL DROP TABLE superstore_clean;

SELECT 
    Row_ID, Order_ID,
    TRY_CAST(Order_Date AS DATE) as Order_Date,
    Customer_Name, Segment, Ship_Mode, City, State, Region, 
    Category, Sub_Category, Product_Name,
    TRY_CAST(Sales AS FLOAT) as Sales
INTO superstore_clean
FROM train
WHERE TRY_CAST(Order_Date AS DATE) IS NOT NULL; -- Cleaning invalid dates
GO

-- 2. SALES TRENDS (YEARLY PERFORMANCE)
SELECT 
    YEAR(Order_Date) as Sales_Year, 
    ROUND(SUM(Sales), 2) as Yearly_Revenue
FROM superstore_clean
GROUP BY YEAR(Order_Date)
ORDER BY Yearly_Revenue DESC;

-- 3. DEEP DIVE: SEASONAL TRENDS (FEB, AUG, DEC)
SELECT 
    MONTH(Order_Date) as Sales_Month,
    Segment,
    Category,
    ROUND(SUM(Sales), 2) as Total_Sales
FROM superstore_clean
WHERE MONTH(Order_Date) IN (2, 8, 12)
GROUP BY MONTH(Order_Date), Segment, Category
ORDER BY Sales_Month, Total_Sales DESC;

-- 4. PRODUCT ANALYSIS (TOP & BOTTOM PERFORMERS)
-- Top 5 Sub-Categories
SELECT TOP 5 Sub_Category, ROUND(SUM(Sales), 2) as Revenue
FROM superstore_clean
GROUP BY Sub_Category
ORDER BY Revenue DESC;

-- Bottom 5 Sub-Categories
SELECT TOP 5 Sub_Category, ROUND(SUM(Sales), 2) as Revenue
FROM superstore_clean
GROUP BY Sub_Category
ORDER BY Revenue ASC;

-- 5. REGIONAL ANALYSIS
SELECT Region, Category, ROUND(SUM(Sales), 2) as Regional_Sales
FROM superstore_clean
GROUP BY Region, Category
ORDER BY Region, Regional_Sales DESC;

-- 6. CUSTOMER LOYALTY (THE WHALES)
SELECT TOP 10 Customer_Name, 
       COUNT(DISTINCT Order_ID) as Order_Count, 
       ROUND(SUM(Sales), 2) as Total_Spent
FROM superstore_clean
GROUP BY Customer_Name
ORDER BY Total_Spent DESC;