-- Podaj maksymaln� i minimaln� cen� zamawianego produktu dla ka�dego
-- zam�wienia

USE Northwind
SELECT OrderID, MAX(UnitPrice) AS MaxPrice, MIN(UnitPrice) AS MinPrice
FROM [Order Details]
GROUP BY OrderID