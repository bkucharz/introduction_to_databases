-- Wypisz informacj� o wszystkich produktach o cenie powy�ej �redniej

USE Northwind
SELECT *
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)