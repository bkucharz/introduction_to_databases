-- Podaj liczbę zamówionych jednostek produktów dla produktów, dla których
-- productid < 3

USE Northwind
SELECT ProductID, SUM(ISNULL(Quantity, 0))
FROM [Order Details]
WHERE ProductID < 3
GROUP BY ProductID