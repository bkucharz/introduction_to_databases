-- Napisz polecenie, które wyœwietla listê dzieci bêd¹cych cz³onkami biblioteki (baza
-- library). Interesuje nas imiê, nazwisko i data urodzenia dziecka.

USE library
SELECT firstname, lastname, birth_date
FROM member
JOIN juvenile
ON member.member_no = juvenile.member_no
