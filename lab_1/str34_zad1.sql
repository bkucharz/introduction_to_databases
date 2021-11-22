-- Wybierz nazwy i adresy wszystkich klientów maj¹cych siedziby w Londynie

USE Northwind
SELECT CompanyName, Address
FROM Customers
WHERE City = 'London'