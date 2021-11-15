-- Zmodyfikuj poprzedni przyk³ad, aby pokazaæ tylko takie zamówienia, dla których
-- ³¹czna liczbê zamówionych jednostek jest wiêksza ni¿ 250

USE Northwind
SELECT [Order Details].OrderID, SUM(Quantity), CompanyName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY [Order Details].OrderID, CompanyName
HAVING SUM(Quantity) > 250
