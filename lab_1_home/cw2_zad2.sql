USE library
SELECT DISTINCT member_no, isbn, 2 * fine_assessed FROM loanhist
WHERE fine_assessed > 0