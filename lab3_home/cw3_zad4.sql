-- Który z pracowników obs³u¿y³ najwiêksz¹ liczbê zamówieñ w 1997r, podaj imiê i
-- nazwisko takiego pracownika

USE Northwind
SELECT TOP 1 firstname, lastname, COUNT(DISTINCT Orders.OrderID)
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
GROUP BY firstname, lastname
ORDER BY COUNT(DISTINCT Orders.OrderID) DESC