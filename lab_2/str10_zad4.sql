-- Podaj liczbê zamówieñ dostarczanych przez poszczególnych spedytorów
-- (przewoŸników)

USE Northwind
SELECT ShipVia, COUNT(*)
FROM Orders
GROUP BY ShipVia
