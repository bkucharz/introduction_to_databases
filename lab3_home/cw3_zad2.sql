-- Kt�ry z przewo�nik�w by� najaktywniejszy (przewi�z� najwi�ksz� liczb�
-- zam�wie�) w 1997r, podaj nazw� tego przewo�nika

USE NorthwindSELECT TOP 1 CompanyName, COUNT(DISTINCT Orders.OrderID) as 'Orders number'FROM ShippersJOIN Orders ON Shippers.ShipperID = Orders.ShipViaJOIN [Order Details] ON .Orders.OrderID = [Order Details].OrderIDWHERE YEAR(Orders.OrderDate) = 1997GROUP BY CompanyNameORDER BY  [Orders number] DESC