-- Podaj liczb� zam�wie� dostarczanych przez poszczeg�lnych spedytor�w
-- (przewo�nik�w)

USE Northwind
SELECT ShipVia, COUNT(*)
FROM Orders
GROUP BY ShipVia
