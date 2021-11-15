-- Wybierz nazwy i ceny produktów (baza northwind) o cenie jednostkowej
-- pomiêdzy 20.00 a 30.00, dla ka¿dego produktu podaj dane adresowe dostawcy

USE Northwind
SELECT ProductName, UnitPrice, Address
FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice BETWEEN 20 AND 30