-- Dla ka�dego zam�wienia podaj ��czn� liczb� zam�wionych jednostek towaru oraz
-- nazw� klienta.

USE Northwind
SELECT [Order Details].OrderID, SUM(Quantity), CompanyName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY [Order Details].OrderID, CompanyName
