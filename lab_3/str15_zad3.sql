-- Podaj informacje o karach zap�aconych za przetrzymywanie ksi��ki o tytule �Tao
-- Teh King�. Interesuje nas data oddania ksi��ki, ile dni by�a przetrzymywana i jak�
-- zap�acono kar� 
-- Podaj informacje o karach zap�aconych za przetrzymywanie ksi��ki o tytule �Tao
-- Teh King�. Interesuje nas data oddania ksi��ki, ile dni by�a przetrzymywana i jak�
-- zap�acono kar� 

USE library
SELECT in_date, DATEDIFF(DAY, due_date, in_date), fine_paid
FROM loanhist
JOIN title
ON title.title_no = loanhist.title_no
WHERE title = 'Tao Teh King' AND DATEDIFF(DAY, due_date, in_date)>0
