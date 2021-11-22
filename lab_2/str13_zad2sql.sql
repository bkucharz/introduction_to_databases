-- Wy�wietl klient�w dla kt�rych w 1998 roku zrealizowano wi�cej ni� 8 zam�wie�
-- (wyniki posortuj malej�co wg ��cznej kwoty za dostarczenie zam�wie� dla
-- ka�dego z klient�w)

USE Northwind
SELECT CustomerID
FROM Orders
WHERE YEAR(OrderDate) = 1998
GROUP BY CustomerID
HAVING COUNT(OrderID) > 8
ORDER BY SUM(Freight) DESC
