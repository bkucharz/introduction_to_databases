-- Podaj wszystkie produkty kt�rych cena jest mniejsza ni� �rednia cena produktu
-- danej kategorii

USE Northwind
SELECT ProductID
FROM Products as P
WHERE UnitPrice < (SELECT AVG(UnitPrice)
				   FROM Products as C
				   WHERE P.CategoryID = C.CategoryID)


