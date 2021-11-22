-- Napisz instrukcjê select tak aby wybraæ numer zlecenia,
-- datê zamówienia, numer klienta dla wszystkich
-- niezrealizowanych jeszcze zleceñ, dla których krajem
-- odbiorcy jest Argentyna

USE Northwind
SELECT OrderID, OrderDate, CustomerID
FROM Orders
WHERE (ShippedDate IS NULL OR ShippedDate > GETDATE())
AND ShipCountry = 'Argentina'