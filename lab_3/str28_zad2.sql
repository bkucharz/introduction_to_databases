-- Napisz polecenie, które zwraca: isbn, copy_no, on_loan, title, translation, cover,
-- dla ksi¹¿ek o isbn 1, 500 i 1000. Wynik posortuj wg ISBN

USE library
SELECT copy.isbn, copy_no, on_loan, title, translation, cover
FROM copy
JOIN item ON copy.isbn = item.isbn
JOIN title ON item.title_no = title.title_no
WHERE copy.isbn IN (1, 500, 1000)
ORDER BY copy.isbn, copy_no
