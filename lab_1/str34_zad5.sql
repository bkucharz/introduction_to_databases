-- Wybierz nazwy produktów oraz inf. o stanie magazynu dla produktów
-- dostarczanych przez firmê ‘Tokyo Traders’

USE Northwind
SELECT ProductName, UnitsInStock
FROM Products
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Tokyo Traders')