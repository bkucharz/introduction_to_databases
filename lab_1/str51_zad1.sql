-- Wybierz nazwy i kraje wszystkich klient�w, wyniki posortuj
-- wed�ug kraju, w ramach danego kraju nazwy firm posortuj
-- alfabetycznie

USE Northwind
SELECT CompanyName, Country
FROM Customers
ORDER BY Country, CompanyName