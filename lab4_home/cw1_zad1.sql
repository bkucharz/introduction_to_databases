-- Wybierz nazwy i numery telefon�w klient�w , kt�rym w 1997 roku przesy�ki
-- dostarcza�a firma United Package.

USE Northwind
SELECT CompanyName, Phone
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
					 FROM Orders 
					 WHERE YEAR(ShippedDate) = 1997
					 AND ShipVia = (SELECT ShipperID
									FROM Shippers
									WHERE CompanyName = 'United Package'))