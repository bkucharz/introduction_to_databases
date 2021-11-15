-- Dla ka¿dego zamówienia podaj jego wartoœæ uwzglêdniaj¹c op³atê za przesy³kê

USE Northwind
SELECT Orders.OrderID, (SUM(Quantity * UnitPrice * (1 - Discount)) + SUM(Freight)) as 'Total value'
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
GROUP BY Orders.OrderID