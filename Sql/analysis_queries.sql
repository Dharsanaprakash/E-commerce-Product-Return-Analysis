-- Use the database
USE ecommerce_project;

-- Total rows in dataset
SELECT COUNT(*) 
FROM ecommerce_data_project;

-- Check return status distribution
SELECT 
Return_Status,
COUNT(*) AS Total_Orders
FROM ecommerce_data_project
GROUP BY Return_Status;

-- Calculate return rate
SELECT 
ROUND(
SUM(CASE WHEN Return_Status = 'Returned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
2
) AS Return_Rate_Percentage
FROM ecommerce_data_project;

-- Returns by product category
SELECT 
Product_Category,
COUNT(*) AS Total_Returns
FROM ecommerce_data_project
WHERE Return_Flag = 'Returned'
GROUP BY Product_Category
ORDER BY Total_Returns DESC;

-- Returns by reason
SELECT 
Return_Reason,
COUNT(*) AS Total_Returns
FROM ecommerce_data_project
WHERE Return_Flag = 'Returned'
GROUP BY Return_Reason
ORDER BY Total_Returns DESC;

-- Returns by payment method
SELECT 
Payment_Method,
COUNT(*) AS Total_Returns
FROM ecommerce_data_project
WHERE Return_Flag = 'Returned'
GROUP BY Payment_Method
ORDER BY Total_Returns DESC;