-- Znajd� nazwy kategorii, kt�re w opisie zawieraj� przecinek

USE Northwind
SELECT CategoryName
FROM Categories
WHERE Description LIKE '%,%'