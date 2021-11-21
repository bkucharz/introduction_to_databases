-- Podaj ��czn� warto�� zam�wie� ka�dego zam�wienia (uwzgl�dnij cen� za
-- przesy�k�)

USE Northwind
SELECT OrderID, (SELECT SUM(Quantity * UnitPrice * (1 - Discount)) + (SELECT Freight FROM Orders as O2 WHERE O1.OrderID = O2.OrderID)
				 FROM [Order Details]
				 WHERE O1.OrderID = [Order Details].OrderID)
FROM Orders as O1