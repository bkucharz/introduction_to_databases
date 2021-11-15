-- Zmodyfikuj poprzedni przyk³ad tak ¿eby dodaæ jeszcze imiê i nazwisko
-- pracownika obs³uguj¹cego zamówienie

USE Northwind
SELECT Orders.OrderID, SUM(Quantity * UnitPrice * (1 - Discount)) as 'Total price', CompanyName, FirstName, LastName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Orders.OrderID, CompanyName, FirstName, LastName
HAVING SUM(Quantity) > 250