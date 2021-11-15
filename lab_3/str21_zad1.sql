-- Napisz polecenie, które wyœwietla listê dzieci bêd¹cych cz³onkami biblioteki (baza
-- library). Interesuje nas imiê, nazwisko, data urodzenia dziecka i adres
-- zamieszkania dziecka.

USE library
SELECT firstname, lastname, birth_date, street, city, state, zip
FROM juvenile
JOIN member ON juvenile.member_no = member.member_no
JOIN adult ON juvenile.adult_member_no = adult.member_no