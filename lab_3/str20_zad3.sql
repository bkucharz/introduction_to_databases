-- Wybierz nazwy i numery telefonów klientów , którym w 1997 roku przesy³ki
-- dostarcza³a firma ‘United Package

USE Northwind
SELECT Customers.CompanyName, Customers.Phone
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE YEAR(ShippedDate) = 1997 AND Shippers.CompanyName = 'United Package'