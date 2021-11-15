-- Napisz polecenie które zwraca imiê i nazwisko (jako pojedyncz¹ kolumnê –
-- name), oraz informacje o adresie: ulica, miasto, stan kod (jako pojedyncz¹
-- kolumnê – address) dla wszystkich doros³ych cz³onków biblioteki

USE library
SELECT (firstname+' '+lastname) as name, CONCAT(street,' ',city,' ',state,' ',zip) as address
FROM member
JOIN adult ON member.member_no = adult.member_no
