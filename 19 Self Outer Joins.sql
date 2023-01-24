USE sql_hr;

SELECT e.employee_id,e.first_name, em.first_name AS manager
FROM employees e
JOIN employees em
ON e.reports_to = em.employee_id;

SELECT e.employee_id,e.first_name, em.first_name AS manager
FROM employees e
LEFT JOIN employees em
ON e.reports_to = em.employee_id;