-- Napisz polecenie, które oblicza wartość sprzedaży dla każdego zamówienia i
-- zwraca wynik posortowany w malejącej kolejności (wg wartości sprzedaży).

USE Northwind
SELECT OrderID ,SUM(Quantity * UnitPrice * (1 - Discount)) as suma
FROM [Order Details]
GROUP BY OrderID
ORDER BY suma DESC