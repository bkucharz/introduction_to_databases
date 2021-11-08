-- Napisz polecenie, które
-- + generuje pojedynczą kolumnę, która zawiera kolumny: imię
--   członka biblioteki, inicjał drugiego imienia i nazwisko dla
--   wszystkich członków biblioteki, którzy nazywają się Anderson
-- + nazwij tak powstałą kolumnę „email_name”
-- + zmodyfikuj polecenie, tak by zwróciło „listę proponowanych
--   loginów e-mail” utworzonych przez połączenie imienia członka
--   biblioteki, z inicjałem drugiego imienia i pierwszymi dwoma
--   literami nazwiska (wszystko małymi literami). 

USE library
SELECT LOWER(firstname + middleinitial + SUBSTRING(lastname, 1, 2))	AS email_name
FROM member
WHERE lastname = 'Anderson'