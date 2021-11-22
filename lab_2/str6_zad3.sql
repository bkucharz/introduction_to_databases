-- Podaj maksymaln¹ i minimaln¹ i œredni¹ cenê produktu dla produktów o
-- produktach sprzedawanych w butelkach (‘bottle’)

USE Northwind
SELECT MAX(UnitPrice), MIN(UnitPrice), AVG(UnitPrice)
FROM Products
WHERE QuantityPerUnit LIKE '%bottle%'