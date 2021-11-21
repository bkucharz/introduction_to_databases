-- Podaj ³¹czn¹ wartoœæ zamówienia o numerze 1025 (uwzglêdnij cenê za przesy³kê)

USE Northwind
SELECT SUM(Quantity * UnitPrice * (1 - Discount)) + (SELECT Freight FROM Orders WHERE OrderID = 10250)
FROM [Order Details]
WHERE OrderID = 10250
