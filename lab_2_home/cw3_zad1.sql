-- Dla ka¿dego pracownika podaj liczbê obs³ugiwanych przez niego zamówieñ

USE Northwind
SELECT EmployeeID, COUNT(*)
FROM Orders
GROUP BY EmployeeID