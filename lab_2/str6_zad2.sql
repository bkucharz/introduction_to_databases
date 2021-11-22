-- Podaj maksymaln¹ cenê produktu dla produktów o cenach poni¿ej 20$

USE Northwind
SELECT MAX(UnitPrice)
FROM Products
WHERE UnitPrice < 20