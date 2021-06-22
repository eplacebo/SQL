SET search_path TO 'Task2';

SELECT MAX (salary) 
FROM employee
WHERE salary NOT IN (SELECT Max (salary) FROM employee); 

