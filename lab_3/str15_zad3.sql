-- Podaj informacje o karach zap³aconych za przetrzymywanie ksi¹¿ki o tytule ‘Tao
-- Teh King’. Interesuje nas data oddania ksi¹¿ki, ile dni by³a przetrzymywana i jak¹
-- zap³acono karê 
-- Podaj informacje o karach zap³aconych za przetrzymywanie ksi¹¿ki o tytule ‘Tao
-- Teh King’. Interesuje nas data oddania ksi¹¿ki, ile dni by³a przetrzymywana i jak¹
-- zap³acono karê 

USE library
SELECT in_date, DATEDIFF(DAY, due_date, in_date), fine_paid
FROM loanhist
JOIN title
ON title.title_no = loanhist.title_no
WHERE title = 'Tao Teh King' AND DATEDIFF(DAY, due_date, in_date)>0
