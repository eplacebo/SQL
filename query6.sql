SET search_path TO 'Task6';

SELECT class 
FROM courses
WHERE class IN(SELECT class FROM courses GROUP BY class HAVING count(*)>=5) LIMIT 1