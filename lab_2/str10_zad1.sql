-- Podaj maksymaln¹ cenê zamawianego produktu dla ka¿dego zamówienia

USE Northwind
SELECT OrderID, MAX(UnitPrice)
FROM [Order Details]
GROUP BY OrderID