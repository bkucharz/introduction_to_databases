-- Dla ka¿dego pracownika (imiê i nazwisko) podaj ³¹czn¹ wartoœæ zamówieñ
-- obs³u¿onych przez tego pracownika

USE Northwind
SELECT firstname, lastname, SUM(Quantity*UnitPrice*(1-Discount))
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY firstname, lastname