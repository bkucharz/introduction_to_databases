-- Wybierz nazwy i kraje wszystkich klientów maj¹cych
-- siedziby w Japonii (Japan) lub we W³oszech (Italy)

USE Northwind
SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('Japan', 'Italy')