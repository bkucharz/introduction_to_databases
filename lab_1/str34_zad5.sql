-- Wybierz nazwy produkt�w oraz inf. o stanie magazynu dla produkt�w
-- dostarczanych przez firm� �Tokyo Traders�

USE Northwind
SELECT ProductName, UnitsInStock
FROM Products
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Tokyo Traders')