-- Napisz polecenie, które wyœwietla listê dzieci bêd¹cych cz³onkami biblioteki (baza
-- library). Interesuje nas imiê, nazwisko, data urodzenia dziecka, adres
-- zamieszkania dziecka oraz imiê i nazwisko rodzica. 

USE library
SELECT child.firstname, child.lastname, juvenile.birth_date, adult.street, adult.city, adult.state, adult.zip, parent.firstname, parent.lastname
FROM juvenile
JOIN member as child ON juvenile.member_no = child.member_no
JOIN adult ON juvenile.adult_member_no = adult.member_no
JOIN member as parent ON adult.member_no = parent.member_no
