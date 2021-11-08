-- Dla ka¿dego spedytora/przewoŸnika podaj wartoœæ "op³ata za przesy³kê"
-- przewo¿onych przez niego zamówieñ

USE Northwind
SELECT ShipVia, SUM(Freight) as 'op³ata za przesy³kê'
FROM Orders
GROUP BY ShipVia