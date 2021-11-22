-- Wybierz nazwy i adresy wszystkich klientów maj¹cych siedziby we Francji lub w
-- Hiszpanii

USE Northwind
SELECT CompanyName, Address
FROM Customers
WHERE Country IN ('France', 'Spain')