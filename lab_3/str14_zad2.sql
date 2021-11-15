-- Wybierz nazwy produktów oraz inf. o stanie magazynu dla produktów
-- dostarczanych przez firmê ‘Tokyo Traders’
USE Northwind
SELECT ProductName, UnitsInStock
FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.CompanyName = 'Tokyo Traders'