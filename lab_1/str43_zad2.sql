-- Wybierz nazwy i ceny produkt�w o cenie jednostkowej
-- pomi�dzy 20.00 a 30.00

USE Northwind
SELECT *
FROM Products
WHERE UnitPrice BETWEEN 20 AND 30