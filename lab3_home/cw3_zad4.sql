-- Kt�ry z pracownik�w obs�u�y� najwi�ksz� liczb� zam�wie� w 1997r, podaj imi� i
-- nazwisko takiego pracownika

USE Northwind
SELECT TOP 1 firstname, lastname, COUNT(DISTINCT Orders.OrderID)
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY firstname, lastname
ORDER BY COUNT(DISTINCT Orders.OrderID) DESC