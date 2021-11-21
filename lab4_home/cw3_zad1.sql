-- Dla ka¿dego produktu podaj jego nazwê, cenê, œredni¹ cenê wszystkich
-- produktów oraz ró¿nicê miêdzy cen¹ produktu a œredni¹ cen¹ wszystkich
-- produktów

USE Northwind
SELECT ProductID, UnitPrice, (SELECT AVG(UnitPrice) FROM Products), (UnitPrice - (SELECT AVG(UnitPrice) FROM Products))
FROM Products