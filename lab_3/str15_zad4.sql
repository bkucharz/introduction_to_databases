-- Napisz polecenie które podaje listê ksi¹¿ek (mumery ISBN) zarezerwowanych
-- przez osobê o nazwisku: Stephen A. Graff
-- Napisz polecenie które podaje listê ksi¹¿ek (mumery ISBN) zarezerwowanych
-- przez osobê o nazwisku: Stephen A. Graff

USE library
SELECT isbn
FROM reservation
JOIN member
ON reservation.member_no = member.member_no
WHERE firstname='Stephen' AND middleinitial='A' AND lastname='Graff'