
SELECT d.department_id, e.first_name, e.salary, DENSE_RANK() 
   OVER (PARTITION BY e.department_id ORDER BY e.salary) AS drank
   FROM employees e, departments d
   WHERE e.department_id = d.department_id
   AND d.department_id IN (e.employee_id, e.department_id);