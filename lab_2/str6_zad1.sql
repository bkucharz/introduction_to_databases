-- Podaj liczb� produkt�w o cenach mniejszych ni� 10$ lub wi�kszych ni� 20$

USE Northwind
SELECT COUNT(*)
FROM Products
WHERE UnitPrice NOT BETWEEN 10 AND 20