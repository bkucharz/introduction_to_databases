-- Wyszukaj informacje o stanowisku pracownik�w, kt�rych
-- nazwiska zaczynaj� si� na liter� B lub L

USE Northwind
SELECT *
FROM Employees
WHERE LastName LIKE '[BL]%'