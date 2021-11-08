-- Napisz polecenie, które wybiera numer czytelnika i karę
-- dla tych czytelników, którzy mają kary między $8 a $9

USE library
SELECT DISTINCT member_no, fine_assessed FROM loanhist
WHERE fine_assessed BETWEEN 8 and 9