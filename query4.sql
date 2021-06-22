SET search_path TO 'Task4';

SELECT email 
FROM person
WHERE email IN(SELECT email FROM person GROUP BY email HAVING count(*)>1) LIMIT 1