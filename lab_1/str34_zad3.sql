-- Wybierz nazwy i ceny produkt�w o cenie jednostkowej pomi�dzy 20 a 30

USE Northwind
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 20 AND 30