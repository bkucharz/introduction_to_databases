-- Zmodyfikuj rozwi¹zania z pkt 3 tak aby dla pracowników pokazaæ jeszcze datê
-- ostatnio obs³u¿onego zamówienia

USE Northwind
SELECT FirstName, LastName, (SELECT SUM(Quantity*UnitPrice*(1-Discount))
							 FROM [Order Details]
							 WHERE OrderID IN (SELECT OrderID
											   FROM Orders
											   WHERE EmployeeID = E1.EmployeeID)) + (SELECT SUM(Freight) FROM Orders WHERE EmployeeID = E1.EmployeeID), (SELECT MAX(ShippedDate) FROM Orders WHERE EmployeeID = E1.EmployeeID) 
FROM Employees AS E1
WHERE EmployeeID IN (SELECT ReportsTo FROM Employees)

SELECT FirstName, LastName, (SELECT SUM(Quantity*UnitPrice*(1-Discount))
							 FROM [Order Details]
							 WHERE OrderID IN (SELECT OrderID
											   FROM Orders
											   WHERE EmployeeID = E1.EmployeeID)) + (SELECT SUM(Freight) FROM Orders WHERE EmployeeID = E1.EmployeeID), (SELECT MAX(ShippedDate) FROM Orders WHERE EmployeeID = E1.EmployeeID) 
FROM Employees AS E1
WHERE NOT EXISTS (SELECT EmployeeID FROM Employees WHERE E1.EmployeeID = ReportsTo)

