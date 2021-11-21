-- Dla ka¿dego pracownika (imiê i nazwisko) podaj ³¹czn¹ wartoœæ zamówieñ
-- obs³u¿onych przez tego pracownika (przy obliczaniu wartoœci zamówieñ
-- uwzglêdnij cenê za przesy³kê

USE Northwind
SELECT FirstName, LastName, (SELECT SUM(Quantity*UnitPrice*(1-Discount))
							 FROM [Order Details]
							 WHERE OrderID IN (SELECT OrderID
											   FROM Orders
											   WHERE EmployeeID = Employees.EmployeeID)) + (SELECT SUM(Freight) FROM Orders WHERE EmployeeID = Employees.EmployeeID) 
FROM Employees
