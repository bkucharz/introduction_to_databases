USE library
SELECT DISTINCT member_no, fine_assessed FROM loanhist
WHERE fine_assessed BETWEEN 8 and 9