-- Podaj maksymaln� cen� produktu dla produkt�w o cenach poni�ej 20$

USE Northwind
SELECT MAX(UnitPrice)
FROM Products
WHERE UnitPrice < 20