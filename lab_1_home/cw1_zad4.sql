--Napisz polecenie select, za pomocą którego uzyskasz
--numer książki i autora dla wszystkich książek, których
--autorem jest Charles Dickens lub Jane Austen

USE library
SELECT title_no, author FROM title
WHERE author IN ('Charles Dickens', 'Jane Austen')