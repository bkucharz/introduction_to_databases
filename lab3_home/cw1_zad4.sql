-- Zmodyfikuj poprzedni przyk³ad, aby pokazaæ tylko takie zamówienia, dla których
-- ³¹czna liczba jednostek jest wiêksza ni¿ 250.

USE Northwind
SELECT Orders.OrderID, SUM(Quantity * UnitPrice * (1 - Discount)) as 'Total price', CompanyName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.OrderID, CompanyName
HAVING SUM(Quantity) > 250