-- Wybierz nazwy i numery telefon�w dostawc�w, dostarczaj�cych produkty,
-- kt�rych aktualnie nie ma w magazynie

USE Northwind
SELECT CompanyName, Phone
FROM Suppliers
JOIN Products
ON Suppliers.SupplierID = Products.SupplierID
WHERE ISNULL(UnitsInStock, 0) = 0