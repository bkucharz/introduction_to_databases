-- Dla ka¿dego produktu podaj jego nazwê kategorii, nazwê produktu, cenê, œredni¹
-- cenê wszystkich produktów danej kategorii oraz ró¿nicê miêdzy cen¹ produktu a
-- œredni¹ cen¹ wszystkich produktów danej kategorii

USE Northwind
SELECT ProductID, (SELECT CategoryName FROM Categories WHERE Categories.CategoryID = Products.CategoryID), UnitPrice, (SELECT AVG(UnitPrice) FROM Products as C WHERE Products.CategoryID = C.CategoryID), (UnitPrice - (SELECT AVG(UnitPrice) FROM Products as C WHERE Products.CategoryID = C.CategoryID))
FROM Products
