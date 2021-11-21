-- Dla ka�dego pracownika (imi� i nazwisko) podaj ��czn� warto�� zam�wie�
-- obs�u�onych przez tego pracownika (przy obliczaniu warto�ci zam�wie�
-- uwzgl�dnij cen� za przesy�k�

USE Northwind
SELECT FirstName, LastName, (SELECT SUM(Quantity*UnitPrice*(1-Discount))
							 FROM [Order Details]
							 WHERE OrderID IN (SELECT OrderID
											   FROM Orders
											   WHERE EmployeeID = Employees.EmployeeID)) + (SELECT SUM(Freight) FROM Orders WHERE EmployeeID = Employees.EmployeeID) 
FROM Employees
