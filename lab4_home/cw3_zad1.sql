-- Dla ka�dego produktu podaj jego nazw�, cen�, �redni� cen� wszystkich
-- produkt�w oraz r�nic� mi�dzy cen� produktu a �redni� cen� wszystkich
-- produkt�w

USE Northwind
SELECT ProductID, UnitPrice, (SELECT AVG(UnitPrice) FROM Products), (UnitPrice - (SELECT AVG(UnitPrice) FROM Products))
FROM Products