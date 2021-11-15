-- Który z przewoŸników by³ najaktywniejszy (przewióz³ najwiêksz¹ liczbê
-- zamówieñ) w 1997r, podaj nazwê tego przewoŸnika

USE NorthwindSELECT TOP 1 CompanyName, COUNT(DISTINCT Orders.OrderID) as 'Orders number'FROM ShippersJOIN Orders ON Shippers.ShipperID = Orders.ShipViaJOIN [Order Details] ON .Orders.OrderID = [Order Details].OrderIDWHERE YEAR(Orders.OrderDate) = 1997GROUP BY CompanyNameORDER BY  [Orders number] DESC