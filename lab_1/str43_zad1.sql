-- Szukamy informacji o produktach o cenach mniejszych ni�
-- 10 lub wi�kszych ni� 20

USE Northwind
SELECT *
FROM Products
WHERE UnitPrice NOT BETWEEN 10 AND 20