-- Wybierz nazwy i ceny produktów z kategorii ‘meat

USE Northwind
SELECT ProductName, UnitPrice
FROM Products
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName LIKE '%meat%')