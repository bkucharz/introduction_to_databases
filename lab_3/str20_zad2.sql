-- Wybierz nazwy i ceny produkt�w z kategorii �Confections� dla ka�dego produktu
-- podaj nazw� dostawcy.

USE Northwind
SELECT ProductName, UnitPrice, CompanyName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryName = 'Confections'