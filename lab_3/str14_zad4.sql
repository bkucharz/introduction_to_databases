-- Wybierz nazwy i numery telefonów dostawców, dostarczaj¹cych produkty,
-- których aktualnie nie ma w magazynie

USE Northwind
SELECT CompanyName, Phone
FROM Suppliers
JOIN Products
ON Suppliers.SupplierID = Products.SupplierID
WHERE ISNULL(UnitsInStock, 0) = 0