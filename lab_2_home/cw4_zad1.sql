-- Dla ka�dego pracownika podaj liczb� obs�ugiwanych przez niego zam�wie� z
-- podzia�em na lata i miesi�ce

USE Northwind
SELECT EmployeeID, COUNT(*) as 'liczba zam�wie�', YEAR(OrderDate) as Rok, MONTH(OrderDate) as Miesi�c
FROM Orders
GROUP BY EmployeeID, YEAR(OrderDate),  MONTH(OrderDate)