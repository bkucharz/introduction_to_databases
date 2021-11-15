-- Kt�ry z pracownik�w obs�u�y� najaktywniejszy (obs�u�y� zam�wienia o
-- najwi�kszej warto�ci) w 1997r, podaj imi� i nazwisko takiego pracownika

USE Northwind
SELECT TOP 1 firstname, lastname, SUM(Quantity*UnitPrice*(1-Discount)) as 'Total value'
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY firstname, lastname
ORDER BY [Total value] DESC