-- Ogranicz wynik z pkt 1 tylko do pracownik�w
-- a) kt�rzy maj� podw�adnych
-- b) kt�rzy nie maj� podw�adnych

USE Northwind
SELECT FirstName, LastName, (SELECT SUM(Quantity*UnitPrice*(1-Discount))
							 FROM [Order Details]
							 WHERE OrderID IN (SELECT OrderID
											   FROM Orders
											   WHERE EmployeeID = Employees.EmployeeID)) + (SELECT SUM(Freight) FROM Orders WHERE EmployeeID = Employees.EmployeeID) 
FROM Employees 
WHERE EmployeeID IN (SELECT ReportsTo FROM Employees)

SELECT FirstName, LastName, (SELECT SUM(Quantity*UnitPrice*(1-Discount))
							 FROM [Order Details]
							 WHERE OrderID IN (SELECT OrderID
											   FROM Orders
											   WHERE EmployeeID = E1.EmployeeID)) + (SELECT SUM(Freight) FROM Orders WHERE EmployeeID = E1.EmployeeID) 
FROM Employees AS E1
WHERE NOT EXISTS (SELECT EmployeeID FROM Employees WHERE E1.EmployeeID = ReportsTo)
