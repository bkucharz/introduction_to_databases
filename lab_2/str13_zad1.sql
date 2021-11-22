-- Wyœwietl zamówienia dla których liczba pozycji zamówienia jest wiêksza ni¿ 5

USE Northwind
SELECT OrderID
FROM [Order Details]
GROUP BY OrderID
HAVING COUNT(ProductID) > 5