-- Napisz polecenie, kt�re wy�wietla adresy cz�onk�w biblioteki, kt�rzy maj� dzieci
-- urodzone przed 1 stycznia 1996. Interesuj� nas tylko adresy takich cz�onk�w
-- biblioteki, kt�rzy aktualnie nie przetrzymuj� ksi��ek.

USE library
SELECT adult.member_no, street, city, state, zip, COUNT(isbn) as 'borrowed books'
FROM adult
JOIN juvenile ON juvenile.adult_member_no = adult.member_no
LEFT JOIN loan ON adult.member_no = loan.member_no
WHERE juvenile.birth_date < '1996-01-01'
GROUP BY adult.member_no, street, city, state, zip
HAVING COUNT(isbn) = 0
ORDER BY adult.member_no