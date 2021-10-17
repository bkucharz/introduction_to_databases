USE library
SELECT DISTINCT member_no, fine_paid FROM loanhist
WHERE fine_assessed > fine_paid