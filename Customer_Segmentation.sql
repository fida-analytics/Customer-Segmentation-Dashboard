CREATE DATABASE
CustomerSegmentationDB;
GO

USE CustomerSegmentationDB;
GO
SELECT * FROM Mall_Customers;

SELECT COUNT(*) AS Total_Customers FROM Mall_Customers;

SELECT Gender,
           COUNT(*) AS Customer_Count 
		   FROM Mall_Customers GROUP BY Gender;


SELECT AVG(Age) AS Average_Age
FROM Mall_Customers;

SELECT AVG([Annual_Income_k]) AS Average_Annual_Income
FROM Mall_Customers;


SELECT AVG(Spending_Score_1_100) AS Average_Spending_Score
FROM Mall_Customers;




SELECT TOP 1 * FROM Mall_Customers
ORDER BY Age ASC;

SELECT TOP 1 * FROM Mall_Customers
ORDER BY age DESC;




SELECT TOP 10 * FROM Mall_Customers
ORDER BY [Annual_Income_k] DESC;

SELECT TOP 10 * FROM Mall_Customers
ORDER BY [Spending_Score_1_100] DESC;


SELECT Gender,
AVG([Annual_Income_k]) AS Average_Income
FROM Mall_Customers
GROUP BY Gender;


SELECT Gender,
AVG ([Spending_Score_1_100]) AS Average_Spending_Score
FROM Mall_Customers
GROUP BY Gender;


SELECT * FROM Mall_Customers
WHERE Age >( SELECT AVG (Age) FROM Mall_Customers);


Select * FROM Mall_Customers
WHERE Annual_Income_k > 70
ORDER BY Annual_Income_k DESC;


SELECT * FROM Mall_Customers 
WHERE Spending_Score_1_100 > 80
ORDER BY Spending_Score_1_100 DESC;

SELECT CustomerID, Gender, Age, 
CASE
WHEN Age <20 THEN 'TEEN'
WHEN Age BETWEEN 20 AND 35 THEN 'Young Adult'
WHEN Age BETWEEN 36 AND 50 THEN 'Adult'
ELSE 'Senior'
END AS Age_Group
FROM Mall_Customers;


SELECT CustomerID, Annual_Income_k, Gender,
CASE
WHEN Annual_income_k < 40 THEN 'Low Income'
WHEN Annual_Income_k BETWEEN 40 AND 70 THEN 'Middle Income'
ELSE 'High Income'
END AS Income_Category 
FROM Mall_Customers;


SELECT CustomerID, Spending_Score_1_100,
CASE 
WHEN Spending_Score_1_100 < 40 THEN 'LOW Spender'
WHEN Spending_Score_1_100 BETWEEN 40 AND 70 THEN 'Medium Spender'
ELSE 'High Spender'
END AS Spender_Category
 FROM Mall_Customers;


SELECT COUNT(*) AS Total_Customers,
       AVG (Age) AS Average_Age,
	   AVG (Annual_Income_k) AS Average_Income,
	   AVG (Spending_Score_1_100) AS Average_Spending_Score
FROM Mall_Customers;