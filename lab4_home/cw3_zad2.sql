-- Dla ka�dego produktu podaj jego nazw� kategorii, nazw� produktu, cen�, �redni�
-- cen� wszystkich produkt�w danej kategorii oraz r�nic� mi�dzy cen� produktu a
-- �redni� cen� wszystkich produkt�w danej kategorii

USE Northwind
SELECT ProductID, (SELECT CategoryName FROM Categories WHERE Categories.CategoryID = Products.CategoryID), UnitPrice, (SELECT AVG(UnitPrice) FROM Products as C WHERE Products.CategoryID = C.CategoryID), (UnitPrice - (SELECT AVG(UnitPrice) FROM Products as C WHERE Products.CategoryID = C.CategoryID))
FROM Products
