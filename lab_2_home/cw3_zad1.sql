-- Dla ka�dego pracownika podaj liczb� obs�ugiwanych przez niego zam�wie�

USE Northwind
SELECT EmployeeID, COUNT(*)
FROM Orders
GROUP BY EmployeeID