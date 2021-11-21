-- Podaj wszystkie produkty których cena jest mniejsza ni¿ œrednia cena produktu
-- danej kategorii

USE Northwind
SELECT ProductID
FROM Products as P
WHERE UnitPrice < (SELECT AVG(UnitPrice)
				   FROM Products as C
				   WHERE P.CategoryID = C.CategoryID)


