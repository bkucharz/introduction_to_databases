-- Wybierz nazwy i adresy wszystkich klient�w maj�cych siedziby w Londynie

USE Northwind
SELECT CompanyName, Address
FROM Customers
WHERE City = 'London'