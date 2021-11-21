-- Wybierz nazwy i numery telefonów klientów, którzy kupowali produkty z kategorii
-- ‘Confections’

USE Northwind
SELECT DISTINCT CompanyName, Phone
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
JOIN Products ON [Order Details].ProductID = Products.ProductID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE CategoryName = 'Confections'