-- Wybierz nazwy produkt�w kt�rych nie ma w magazynie

USE Northwind
SELECT ProductName
FROM Products
WHERE ISNULL(UnitsInStock, 0) = 0