-- Napisz polecenie, kt�re wy�wietla list� dzieci b�d�cych cz�onkami biblioteki (baza
-- library). Interesuje nas imi�, nazwisko i data urodzenia dziecka.

USE library
SELECT firstname, lastname, birth_date
FROM member
JOIN juvenile
ON member.member_no = juvenile.member_no
