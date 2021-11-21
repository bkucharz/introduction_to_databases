-- Podaj produkty kupowane przez wiêcej ni¿ jednego klienta

USE Northwind
SELECT ProductID
FROM Products
WHERE ProductID IN (SELECT ProductID
					FROM [Order Details]
					WHERE (SELECT COUNT(CustomerID)
						   FROM Orders
						   WHERE [Order Details].ProductID = Products.ProductID) > 1)




