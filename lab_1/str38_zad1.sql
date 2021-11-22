-- Szukamy informacji o produktach sprzedawanych w
-- butelkach (‘bottle’)

USE Northwind
SELECT *
FROM Products
WHERE QuantityPerUnit LIKE '%bottle%'