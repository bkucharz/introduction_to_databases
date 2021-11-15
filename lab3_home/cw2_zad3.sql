-- Posortuj wyniki w zapytaniu z poprzedniego punktu wg:
-- a) ³¹cznej wartoœci zamówieñ
-- b) ³¹cznej liczby zamówionych przez klientów jednostek towarów.

USE NorthwindSELECT CategoryName, SUM(Quantity * [Order Details].UnitPrice * (1 - Discount)) as 'Total value'FROM CategoriesJOIN Products ON Categories.CategoryID = Products.ProductIDJOIN [Order Details] ON Products.ProductID = [Order Details].ProductIDGROUP BY CategoryNameORDER BY [Total value]SELECT CategoryName, SUM(Quantity * [Order Details].UnitPrice * (1 - Discount)) as 'Total value'FROM CategoriesJOIN Products ON Categories.CategoryID = Products.ProductIDJOIN [Order Details] ON Products.ProductID = [Order Details].ProductIDGROUP BY CategoryNameORDER BY SUM(Quantity)