-- Wybierz informacj� o produktach (grupa, nazwa, cena),
-- produkty posortuj wg grup a w grupach malej�co wg ceny

USE Northwind
SELECT CategoryID, ProductName, UnitPrice
FROM Products
ORDER BY CategoryID, UnitPrice DESC