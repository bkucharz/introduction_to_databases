-- Dla ka¿dej kategorii podaj maksymaln¹ i minimaln¹ cenê produktu w tej
-- kategorii

USE Northwind
SELECT CategoryID, MAX(UnitPrice) as 'Max price', MIN(UnitPrice) as 'Min price'
FROM Products
GROUP BY CategoryID