-- Który z pracowników obs³u¿y³ najaktywniejszy (obs³u¿y³ zamówienia o
-- najwiêkszej wartoœci) w 1997r, podaj imiê i nazwisko takiego pracownika

USE Northwind
SELECT TOP 1 firstname, lastname, SUM(Quantity*UnitPrice*(1-Discount)) as 'Total value'
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY firstname, lastname
ORDER BY [Total value] DESC