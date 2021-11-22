-- Wypisz informacjê o wszystkich produktach o cenie powy¿ej œredniej

USE Northwind
SELECT *
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)