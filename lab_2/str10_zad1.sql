-- Podaj maksymaln� cen� zamawianego produktu dla ka�dego zam�wienia

USE Northwind
SELECT OrderID, MAX(UnitPrice)
FROM [Order Details]
GROUP BY OrderID