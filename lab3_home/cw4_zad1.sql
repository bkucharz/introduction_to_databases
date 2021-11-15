-- Dla ka�dego pracownika (imi� i nazwisko) podaj ��czn� warto�� zam�wie�
-- obs�u�onych przez tego pracownika
-- Ogranicz wynik tylko do pracownik�w
-- a) kt�rzy maj� podw�adnych
-- b) kt�rzy nie maj� podw�adnych

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