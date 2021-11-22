-- Wybierz nazwy i ceny produktów o cenie jednostkowej
-- pomiêdzy 20.00 a 30.00

USE Northwind
SELECT *
FROM Products
WHERE UnitPrice BETWEEN 20 AND 30