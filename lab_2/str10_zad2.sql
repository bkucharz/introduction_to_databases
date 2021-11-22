-- Posortuj zamówienia wg maksymalnej ceny produktu

USE Northwind
SELECT OrderID, MAX(UnitPrice) as MaxPrice
FROM [Order Details]
GROUP BY OrderID
ORDER BY MaxPrice DESC