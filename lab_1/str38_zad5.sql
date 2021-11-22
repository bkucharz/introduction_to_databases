-- ZnajdŸ klientów, którzy w swojej nazwie maj¹ w którymœ
-- miejscu s³owo ‘Store’

USE Northwind
SELECT *
FROM Customers
WHERE CompanyName LIKE '%Store%'