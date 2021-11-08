-- Dla ka¿dego pracownika podaj liczbê obs³ugiwanych przez niego zamówieñ z
-- podzia³em na lata i miesi¹ce

USE Northwind
SELECT EmployeeID, COUNT(*) as 'liczba zamówieñ', YEAR(OrderDate) as Rok, MONTH(OrderDate) as Miesi¹c
FROM Orders
GROUP BY EmployeeID, YEAR(OrderDate),  MONTH(OrderDate)