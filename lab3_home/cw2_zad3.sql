-- Posortuj wyniki w zapytaniu z poprzedniego punktu wg:
-- a) ��cznej warto�ci zam�wie�
-- b) ��cznej liczby zam�wionych przez klient�w jednostek towar�w.

USE NorthwindSELECT CategoryName, SUM(Quantity * [Order Details].UnitPrice * (1 - Discount)) as 'Total value'FROM CategoriesJOIN Products ON Categories.CategoryID = Products.ProductIDJOIN [Order Details] ON Products.ProductID = [Order Details].ProductIDGROUP BY CategoryNameORDER BY [Total value]SELECT CategoryName, SUM(Quantity * [Order Details].UnitPrice * (1 - Discount)) as 'Total value'FROM CategoriesJOIN Products ON Categories.CategoryID = Products.ProductIDJOIN [Order Details] ON Products.ProductID = [Order Details].ProductIDGROUP BY CategoryNameORDER BY SUM(Quantity)