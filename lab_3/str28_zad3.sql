-- Napisz polecenie kt�re zwraca o u�ytkownikach biblioteki o nr 250, 342, i 1675
-- (dla ka�dego u�ytkownika: nr, imi� i nazwisko cz�onka biblioteki), oraz informacj�
-- o zarezerwowanych ksi��kach (isbn, data) 

USE library
SELECT member.member_no, firstname, lastname, isbn, log_date
FROM member
LEFT JOIN reservation ON member.member_no = reservation.member_no
WHERE member.member_no IN (250, 542, 1675)