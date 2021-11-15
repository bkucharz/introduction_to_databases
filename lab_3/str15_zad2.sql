-- Napisz polecenie, które podaje tytu³y aktualnie wypo¿yczonych ksi¹¿ek

USE library
SELECT DISTINCT title
FROM title
JOIN loan
ON title.title_no = loan.title_no