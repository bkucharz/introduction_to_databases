-- Wybierz nazwy i ceny produktów o cenie jednostkowej pomiêdzy 20 a 30

USE Northwind
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 20 AND 30