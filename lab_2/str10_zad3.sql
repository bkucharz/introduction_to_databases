-- Podaj maksymaln¹ i minimaln¹ cenê zamawianego produktu dla ka¿dego
-- zamówienia

USE Northwind
SELECT OrderID, MAX(UnitPrice) AS MaxPrice, MIN(UnitPrice) AS MinPrice
FROM [Order Details]
GROUP BY OrderID