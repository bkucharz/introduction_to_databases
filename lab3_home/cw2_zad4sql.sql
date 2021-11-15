-- Dla ka�dego zam�wienia podaj jego warto�� uwzgl�dniaj�c op�at� za przesy�k�

USE Northwind
SELECT Orders.OrderID, (SUM(Quantity * UnitPrice * (1 - Discount)) + SUM(Freight)) as 'Total value'
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
GROUP BY Orders.OrderID