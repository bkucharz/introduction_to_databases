-- Podaj ��czn� warto�� zam�wienia o numerze 1025 (uwzgl�dnij cen� za przesy�k�)

USE Northwind
SELECT SUM(Quantity * UnitPrice * (1 - Discount)) + (SELECT Freight FROM Orders WHERE OrderID = 10250)
FROM [Order Details]
WHERE OrderID = 10250
