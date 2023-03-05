SELECT * FROM Tablename;


SELECT first_name, last_name
FROM  employee; 

-- Commenting single line

/* Commenting multiple 
lines
*/

-- Find out top 10 salary
SELECT salary 
FROM employee
ORDER BY salary DESC
LIMIT 10;
