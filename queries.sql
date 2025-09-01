-- Employees with salary above average
SELECT e.emp_id, e.emp_name, e.email_id, d.dept_name, s.salary
FROM Employees e
JOIN Salaries s ON e.emp_id = s.emp_id
JOIN Departments d ON e.dept_id = d.dept_id
WHERE s.salary > (SELECT AVG(salary) FROM Salaries);

-- Employees by department and joining date
SELECT d.dept_name, e.emp_id, e.emp_name, e.joining_date
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
ORDER BY d.dept_name, e.joining_date;

-- Employee count per department
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM Departments d
LEFT JOIN Employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY d.dept_name;

-- Employees in IT department (example)
SELECT e.emp_name, d.dept_name, s.salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
JOIN Salaries s ON e.emp_id = s.emp_id
WHERE e.dept_id = 3;