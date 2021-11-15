-- Napisz polecenie kt�re zwraca imi� i nazwisko (jako pojedyncz� kolumn� �
-- name), oraz informacje o adresie: ulica, miasto, stan kod (jako pojedyncz�
-- kolumn� � address) dla wszystkich doros�ych cz�onk�w biblioteki

USE library
SELECT (firstname+' '+lastname) as name, CONCAT(street,' ',city,' ',state,' ',zip) as address
FROM member
JOIN adult ON member.member_no = adult.member_no
