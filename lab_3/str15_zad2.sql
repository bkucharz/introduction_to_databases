-- Napisz polecenie, kt�re podaje tytu�y aktualnie wypo�yczonych ksi��ek

USE library
SELECT DISTINCT title
FROM title
JOIN loan
ON title.title_no = loan.title_no