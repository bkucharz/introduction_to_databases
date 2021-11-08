-- Podaj nr zamówienia oraz wartość zamówienia, dla zamówień, dla których
-- łączna liczba zamawianych jednostek produktów jest > 250 

USE Northwind
SELECT OrderID, SUM(Quantity * UnitPrice * (1 - Discount))
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(Quantity) > 250