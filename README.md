# E-Commerce Product Return Analysis

## Project Overview
This project analyzes product return patterns in an e-commerce dataset using **SQL and Power BI**.  
The goal is to identify key factors contributing to product returns and provide insights that could help improve product quality, logistics, and customer satisfaction.

The dataset contains **5052 e-commerce transactions** including product category, payment method, shipping method, return reason, and return status.

---

## Tools Used
- SQL (MySQL Workbench)
- Power BI
- Excel

---

## Dataset
The dataset includes the following key columns:

- Order_ID
- Product_Category
- Product_Price
- Payment_Method
- Shipping_Method
- Return_Reason
- Return_Status
- Return_Days
- User_Age
- User_Gender

Total records analyzed: **5052 orders**

---

## SQL Analysis
SQL queries were used to analyze the dataset and generate insights.

Key analysis performed:

- Total number of orders
- Return rate calculation
- Returns by product category
- Returns by return reason
- Returns by payment method

Example SQL Query:

```sql
SELECT 
Product_Category,
COUNT(*) AS Total_Returns
FROM ecommerce_data_project
WHERE Return_Flag = 'Returned'
GROUP BY Product_Category
ORDER BY Total_Returns DESC;
