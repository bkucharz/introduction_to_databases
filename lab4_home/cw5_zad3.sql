-- Ogranicz wynik z pkt 1 tylko do pracowników
-- a) którzy maj¹ podw³adnych
-- b) którzy nie maj¹ podw³adnych

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
