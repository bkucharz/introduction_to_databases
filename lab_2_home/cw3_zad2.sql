-- Dla ka�dego spedytora/przewo�nika podaj warto�� "op�ata za przesy�k�"
-- przewo�onych przez niego zam�wie�

USE Northwind
SELECT ShipVia, SUM(Freight) as 'op�ata za przesy�k�'
FROM Orders
GROUP BY ShipVia