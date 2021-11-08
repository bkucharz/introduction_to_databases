-- Napisz polecenie, które wybiera numer tytułu i tytuł dla
-- wszystkich rekordów zawierających string „adventures”
-- gdzieś w tytule.

USE library
SELECT title, title_no FROM title
WHERE title LIKE '%adventures%'