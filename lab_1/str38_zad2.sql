-- Wyszukaj informacje o stanowisku pracownik�w, kt�rych
-- nazwiska zaczynaj� si� na liter� z zakresu od B do L

USE Northwind
SELECT *
FROM Employees
WHERE LastName LIKE '[B-L]%'