-- Dla ka¿dego zamówienia podaj ³¹czn¹ liczbê zamówionych jednostek towaru oraz
-- nazwê klienta.

USE Northwind
SELECT [Order Details].OrderID, SUM(Quantity), CompanyName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY [Order Details].OrderID, CompanyName
