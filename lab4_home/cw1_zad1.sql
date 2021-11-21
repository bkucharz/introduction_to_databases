-- Wybierz nazwy i numery telefonów klientów , którym w 1997 roku przesy³ki
-- dostarcza³a firma United Package.

USE Northwind
SELECT CompanyName, Phone
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
					 FROM Orders 
					 WHERE YEAR(ShippedDate) = 1997
					 AND ShipVia = (SELECT ShipperID
									FROM Shippers
									WHERE CompanyName = 'United Package'))