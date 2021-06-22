SET search_path TO 'Task3';

SELECT employee.name AS Employee
FROM employee
INNER JOIN employee AS empman
ON employee.managerid=empman.id
WHERE empman.salary<employee.salary