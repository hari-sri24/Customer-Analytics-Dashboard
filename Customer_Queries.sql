-- 1. Total Revenue and Customer Count by Customer Tier
SELECT 
    Customer_Tier,
    COUNT(Customer_ID) AS Total_Customers,
    SUM(Total_Spent) AS Total_Revenue,
    ROUND(AVG(Total_Spent), 2) AS Avg_Customer_Spend
FROM customers
GROUP BY Customer_Tier
ORDER BY Total_Revenue DESC;

-- 2. Customer Distribution Across Age Groups
SELECT 
    Age_Group,
    COUNT(Customer_ID) AS Customer_Count,
    ROUND(AVG(Total_Orders), 2) AS Avg_Orders
FROM customers
GROUP BY Age_Group
ORDER BY Customer_Count DESC;

-- 3. Top 5 States by Total Revenue
SELECT 
    State,
    SUM(Total_Spent) AS Total_Revenue,
    COUNT(Customer_ID) AS Total_Customers
FROM customers
GROUP BY State
ORDER BY Total_Revenue DESC
LIMIT 5;
