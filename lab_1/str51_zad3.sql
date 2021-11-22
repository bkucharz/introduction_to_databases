-- Wybierz nazwy i kraje wszystkich klientów maj¹cych
-- siedziby w Wielkiej Brytanii (UK) lub we W³oszech (Italy),
-- wyniki posortuj tak jak w pkt 1

USE Northwind
SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('UK', 'Italy')
ORDER BY Country, CompanyName