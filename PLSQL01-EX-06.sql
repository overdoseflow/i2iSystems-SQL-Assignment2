
SELECT DEPARTMENTS.department_name AS "Department Name" ,
SUM(EMPLOYEES.SALARY) AS "Total Salary" 
FROM EMPLOYEES 
INNER JOIN DEPARTMENTS 
ON EMPLOYEES.department_id = DEPARTMENTS.department_id group by DEPARTMENTS.department_name;

