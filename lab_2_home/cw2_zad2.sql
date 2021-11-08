--  Zmodyfikuj zapytanie z poprzedniego punktu, tak aby podawało liczbę
-- zamówionych jednostek produktu dla wszystkich produktów

USE Northwind
SELECT ProductID, SUM(ISNULL(Quantity, 0))
FROM [Order Details]
GROUP BY ProductID