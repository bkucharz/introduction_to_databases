-- Podaj liczbê produktów o cenach mniejszych ni¿ 10$ lub wiêkszych ni¿ 20$

USE Northwind
SELECT COUNT(*)
FROM Products
WHERE UnitPrice NOT BETWEEN 10 AND 20