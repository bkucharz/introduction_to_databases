-- Wy�wietl zam�wienia dla kt�rych liczba pozycji zam�wienia jest wi�ksza ni� 5

USE Northwind
SELECT OrderID
FROM [Order Details]
GROUP BY OrderID
HAVING COUNT(ProductID) > 5