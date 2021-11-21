-- Który z pracowników obs³u¿y³ najaktywniejszy (obs³u¿y³ zamówienia o
-- najwiêkszej wartoœci) w 1997r, podaj imiê i nazwisko takiego pracownika

USE Northwind
SELECT TOP 1 FirstName, LastName
FROM Employees
ORDER BY (SELECT SUM(Quantity*UnitPrice*(1-Discount))
		  FROM [Order Details]
		  WHERE OrderID IN (SELECT OrderID
							FROM Orders
							WHERE EmployeeID = Employees.EmployeeID
							AND YEAR(OrderDate) = 1997)) DESC

