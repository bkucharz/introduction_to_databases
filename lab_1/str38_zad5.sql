-- Znajd� klient�w, kt�rzy w swojej nazwie maj� w kt�rym�
-- miejscu s�owo �Store�

USE Northwind
SELECT *
FROM Customers
WHERE CompanyName LIKE '%Store%'