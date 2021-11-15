-- Napisz polecenie, kt�re wy�wietla list� dzieci b�d�cych cz�onkami biblioteki (baza
-- library). Interesuje nas imi�, nazwisko, data urodzenia dziecka, adres
-- zamieszkania dziecka oraz imi� i nazwisko rodzica. 

USE library
SELECT child.firstname, child.lastname, juvenile.birth_date, adult.street, adult.city, adult.state, adult.zip, parent.firstname, parent.lastname
FROM juvenile
JOIN member as child ON juvenile.member_no = child.member_no
JOIN adult ON juvenile.adult_member_no = adult.member_no
JOIN member as parent ON adult.member_no = parent.member_no
