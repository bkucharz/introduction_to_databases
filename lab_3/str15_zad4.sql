-- Napisz polecenie kt�re podaje list� ksi��ek (mumery ISBN) zarezerwowanych
-- przez osob� o nazwisku: Stephen A. Graff
-- Napisz polecenie kt�re podaje list� ksi��ek (mumery ISBN) zarezerwowanych
-- przez osob� o nazwisku: Stephen A. Graff

USE library
SELECT isbn
FROM reservation
JOIN member
ON reservation.member_no = member.member_no
WHERE firstname='Stephen' AND middleinitial='A' AND lastname='Graff'