USE joindb
SELECT a.buyer_id AS buyer1, ap.prod_name,b.buyer_id AS buyer2
FROM sales AS a
JOIN sales AS b ON a.prod_id = b.prod_id
JOIN Produce as ap ON a.prod_id = ap.prod_id
WHERE a.buyer_id > b.buyer_id