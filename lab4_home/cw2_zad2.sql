-- Podaj wszystkie produkty których cena jest mniejsza ni¿ œrednia cena produktu

USE Northwind
SELECT ProductID
FROM Products
WHERE UnitPrice < (SELECT AVG(UnitPrice) FROM Products)
