-- Dla ka¿dego zamówienia podaj ³¹czn¹ wartoœæ tego zamówienia oraz nazwê
-- klienta.

USE Northwind
SELECT Orders.OrderID, SUM(Quantity * UnitPrice * (1 - Discount)) as 'Total price', CompanyName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.OrderID, CompanyName
ORDER BY 2 DESC