-- Napisz polecenie, kt�re wy�wietla adresy cz�onk�w biblioteki, kt�rzy maj� dzieci
-- urodzone przed 1 stycznia 1996

USE Northwind
SELECT (employee.LastName+' '+employee.FirstName) as 'Report', (supervisor.LastName+' '+supervisor.FirstName) as 'Supervisor'
FROM Employees as employee
LEFT JOIN Employees as supervisor ON employee.ReportsTo = supervisor.EmployeeID