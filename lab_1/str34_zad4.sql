-- Wybierz nazwy i ceny produkt�w z kategorii �meat

USE Northwind
SELECT ProductName, UnitPrice
FROM Products
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName LIKE '%meat%')