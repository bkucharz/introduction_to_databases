-- Który z spedytorów by³ najaktywniejszy w 1997 roku

USE Northwind
SELECT TOP 1 ShipVia, COUNT(*) AS 'Orders in 1997'
FROM Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY ShipVia
ORDER BY [Orders in 1997] DESC
