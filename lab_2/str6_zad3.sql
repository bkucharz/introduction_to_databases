-- Podaj maksymaln� i minimaln� i �redni� cen� produktu dla produkt�w o
-- produktach sprzedawanych w butelkach (�bottle�)

USE Northwind
SELECT MAX(UnitPrice), MIN(UnitPrice), AVG(UnitPrice)
FROM Products
WHERE QuantityPerUnit LIKE '%bottle%'