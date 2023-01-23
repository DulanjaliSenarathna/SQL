USE sql_hr;

SELECT e.employee_id, m.first_name,e.first_name AS Manager 
FROM employees e
JOIN employees m
ON e.employee_id = m.reports_to;