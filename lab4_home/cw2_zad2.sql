-- Podaj wszystkie produkty kt�rych cena jest mniejsza ni� �rednia cena produktu

USE Northwind
SELECT ProductID
FROM Products
WHERE UnitPrice < (SELECT AVG(UnitPrice) FROM Products)
