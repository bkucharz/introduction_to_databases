-- Wybierz nazwy i kraje wszystkich klient�w maj�cych
-- siedziby w Japonii (Japan) lub we W�oszech (Italy)

USE Northwind
SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('Japan', 'Italy')