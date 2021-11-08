-- Napisz polecenie, które wybiera numer czytelnika, karę
-- oraz zapłaconą karę dla wszystkich, którzy jeszcze nie
-- zapłacili.

USE library
SELECT DISTINCT member_no, fine_paid FROM loanhist
WHERE fine_assessed > fine_paid