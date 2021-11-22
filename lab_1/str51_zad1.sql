-- Wybierz nazwy i kraje wszystkich klientów, wyniki posortuj
-- wed³ug kraju, w ramach danego kraju nazwy firm posortuj
-- alfabetycznie

USE Northwind
SELECT CompanyName, Country
FROM Customers
ORDER BY Country, CompanyName