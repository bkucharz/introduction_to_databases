-- Wybierz nazwy produkt�w oraz inf. o stanie magazynu dla produkt�w
-- dostarczanych przez firm� �Tokyo Traders�
USE Northwind
SELECT ProductName, UnitsInStock
FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.CompanyName = 'Tokyo Traders'