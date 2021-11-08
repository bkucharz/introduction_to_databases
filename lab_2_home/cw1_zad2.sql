-- Zmodyfikuj zapytanie z poprzedniego punktu, tak aby zwracało pierwszych
-- 10 wierszy

USE Northwind
SELECT TOP 10 OrderID ,SUM(Quantity * UnitPrice * (1 - Discount)) as suma
FROM [Order Details]
GROUP BY OrderID
ORDER BY suma DESC