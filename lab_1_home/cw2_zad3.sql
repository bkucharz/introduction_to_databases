USE library
SELECT LOWER(firstname + middleinitial + SUBSTRING(lastname, 1, 2))	AS email_name FROM member
WHERE lastname = 'Anderson'