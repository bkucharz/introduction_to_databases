-- Napisz polecenie, które:
-- + wybiera numer członka biblioteki, isbn książki i wartość
--   naliczonej kary dla wszystkich wypożyczeń, dla których
--   naliczono karę,
-- + stwórz kolumnę wyliczeniową zawierającą podwojoną wartość
--   kolumny fine_assessed,
-- + stwórz alias ‘double fine’ dla tej kolumny

USE library
SELECT DISTINCT member_no, isbn, 2 * fine_assessed AS 'double fine' FROM loanhist
WHERE ISNULL(fine_assessed, 0) > 0