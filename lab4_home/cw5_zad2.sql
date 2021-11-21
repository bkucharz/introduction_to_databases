-- Kt�ry z pracownik�w obs�u�y� najaktywniejszy (obs�u�y� zam�wienia o
-- najwi�kszej warto�ci) w 1997r, podaj imi� i nazwisko takiego pracownika

USE Northwind
SELECT TOP 1 FirstName, LastName
FROM Employees
ORDER BY (SELECT SUM(Quantity*UnitPrice*(1-Discount))
		  FROM [Order Details]
		  WHERE OrderID IN (SELECT OrderID
							FROM Orders
							WHERE EmployeeID = Employees.EmployeeID
							AND YEAR(OrderDate) = 1997)) DESC

