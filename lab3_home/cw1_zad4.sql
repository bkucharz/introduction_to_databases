-- Zmodyfikuj poprzedni przyk�ad, aby pokaza� tylko takie zam�wienia, dla kt�rych
-- ��czna liczba jednostek jest wi�ksza ni� 250.

USE Northwind
SELECT Orders.OrderID, SUM(Quantity * UnitPrice * (1 - Discount)) as 'Total price', CompanyName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.OrderID, CompanyName
HAVING SUM(Quantity) > 250