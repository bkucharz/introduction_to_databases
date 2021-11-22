-- ZnajdŸ nazwy kategorii, które w opisie zawieraj¹ przecinek

USE Northwind
SELECT CategoryName
FROM Categories
WHERE Description LIKE '%,%'