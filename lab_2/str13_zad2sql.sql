-- Wyœwietl klientów dla których w 1998 roku zrealizowano wiêcej ni¿ 8 zamówieñ
-- (wyniki posortuj malej¹co wg ³¹cznej kwoty za dostarczenie zamówieñ dla
-- ka¿dego z klientów)

USE Northwind
SELECT CustomerID
FROM Orders
WHERE YEAR(OrderDate) = 1998
GROUP BY CustomerID
HAVING COUNT(OrderID) > 8
ORDER BY SUM(Freight) DESC
