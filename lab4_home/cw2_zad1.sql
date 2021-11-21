-- Dla ka¿dego produktu podaj maksymaln¹ liczbê zamówionych jednostek

USE Northwind
SELECT ProductID, (SELECT MAX(Quantity)
				   FROM [Order Details]
				   WHERE Products.ProductID = [Order Details].ProductID)
FROM Products