-- Dla ka¿dego pracownika (imiê i nazwisko) podaj ³¹czn¹ wartoœæ zamówieñ
-- obs³u¿onych przez tego pracownika
-- Ogranicz wynik tylko do pracowników
-- a) którzy maj¹ podw³adnych
-- b) którzy nie maj¹ podw³adnych

USE Northwind
SELECT firstname, lastname, SUM(Quantity*UnitPrice*(1-Discount)) as 'Total value'
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
WHERE Employees.ReportsTo IS NOT NULL
GROUP BY firstname, lastname
ORDER BY [Total value] DESC

SELECT firstname, lastname, SUM(Quantity*UnitPrice*(1-Discount)) as 'Total value'
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
WHERE Employees.ReportsTo IS NULL
GROUP BY firstname, lastname
ORDER BY [Total value] DESC