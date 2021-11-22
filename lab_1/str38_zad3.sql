-- Wyszukaj informacje o stanowisku pracowników, których
-- nazwiska zaczynaj¹ siê na literê B lub L

USE Northwind
SELECT *
FROM Employees
WHERE LastName LIKE '[BL]%'