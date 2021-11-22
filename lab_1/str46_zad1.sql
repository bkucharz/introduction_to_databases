-- Napisz instrukcj� select tak aby wybra� numer zlecenia,
-- dat� zam�wienia, numer klienta dla wszystkich
-- niezrealizowanych jeszcze zlece�, dla kt�rych krajem
-- odbiorcy jest Argentyna

USE Northwind
SELECT OrderID, OrderDate, CustomerID
FROM Orders
WHERE (ShippedDate IS NULL OR ShippedDate > GETDATE())
AND ShipCountry = 'Argentina'