-- Podaj warto�� zam�wienia o numerze 10250

USE Northwind
SELECT SUM(Quantity*Unitprice*(1-Discount))
FROM [Order Details]
WHERE OrderID = 10250