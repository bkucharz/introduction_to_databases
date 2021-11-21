-- Wybierz nazwy i numery telefon�w klient�w, kt�rzy nie kupowali produkt�w z
-- kategorii Confections.

USE Northwind
SELECT CompanyName, Phone
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID
					 FROM Orders 
					 WHERE OrderID IN (SELECT OrderID
									  FROM [Order Details]
									  WHERE ProductID IN (SELECT ProductID
														 FROM Products
														 WHERE CategoryID IN (SELECT CategoryID
																			 FROM Categories
																			 WHERE CategoryName = 'Confections'))))
