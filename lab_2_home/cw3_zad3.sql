-- Dla ka�dego spedytora/przewo�nika podaj warto�� "op�ata za przesy�k�"
-- przewo�onych przez niego zam�wie� w latach o 1996 do 1997

USE Northwind
SELECT ShipVia, SUM(Freight) as 'op�ata za przesy�k�'
FROM Orders
WHERE YEAR(ShippedDate) BETWEEN 1996 AND 1997
GROUP BY ShipVia
