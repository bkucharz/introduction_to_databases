-- Wyszukaj informacje o stanowisku pracowników, których
-- nazwiska zaczynaj¹ siê na literê z zakresu od B do L

USE Northwind
SELECT *
FROM Employees
WHERE LastName LIKE '[B-L]%'