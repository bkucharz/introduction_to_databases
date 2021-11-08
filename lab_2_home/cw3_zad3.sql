-- Dla ka¿dego spedytora/przewoŸnika podaj wartoœæ "op³ata za przesy³kê"
-- przewo¿onych przez niego zamówieñ w latach o 1996 do 1997

USE Northwind
SELECT ShipVia, SUM(Freight) as 'op³ata za przesy³kê'
FROM Orders
WHERE YEAR(ShippedDate) BETWEEN 1996 AND 1997
GROUP BY ShipVia
