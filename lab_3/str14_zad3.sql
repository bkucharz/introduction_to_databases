-- Czy s� jacy� klienci kt�rzy nie z�o�yli �adnego zam�wienia w 1997 roku, je�li tak
-- to poka� ich dane adresowe

USE Northwind
SELECT CompanyName, Address
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID AND YEAR(OrderDate) = 1997
WHERE YEAR(OrderDate) IS NULL