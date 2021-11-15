-- Wybierz nazwy i ceny produktów (baza northwind) o cenie jednostkowej
-- pomiêdzy 20.00 a 30.00, dla ka¿dego produktu podaj dane adresowe dostawcy,
-- interesuj¹ nas tylko produkty z kategorii ‘Meat/Poultry’

USE Northwind
SELECT ProductName, UnitPrice
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Products.CategoryID
WHERE UnitPrice BETWEEN 20 AND 30 AND CategoryName = 'Meat/Poultry'