-- Dla ka�dego pracownika (imi� i nazwisko) podaj ��czn� warto�� zam�wie�
-- obs�u�onych przez tego pracownika

USE Northwind
SELECT firstname, lastname, SUM(Quantity*UnitPrice*(1-Discount))
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY firstname, lastname