-- Czy s¹ jacyœ klienci którzy nie z³o¿yli ¿adnego zamówienia w 1997 roku, jeœli tak
-- to poka¿ ich dane adresowe

USE Northwind
SELECT CompanyName, Address
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID AND YEAR(OrderDate) = 1997
WHERE YEAR(OrderDate) IS NULL