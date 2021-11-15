-- Zmodyfikuj poprzedni przyk�ad, aby pokaza� tylko takie zam�wienia, dla kt�rych
-- ��czna liczb� zam�wionych jednostek jest wi�ksza ni� 250

USE Northwind
SELECT [Order Details].OrderID, SUM(Quantity), CompanyName
FROM [Order Details]
JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY [Order Details].OrderID, CompanyName
HAVING SUM(Quantity) > 250
