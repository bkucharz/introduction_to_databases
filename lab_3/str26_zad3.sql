-- Napisz polecenie, które wyœwietla adresy cz³onków biblioteki, którzy maj¹ dzieci
-- urodzone przed 1 stycznia 1996

USE library
SELECT DISTINCT street, city, state, zip
FROM adult
JOIN juvenile ON juvenile.adult_member_no = adult.member_no
WHERE juvenile.birth_date < '1996-01-01'