-- View: HR Employees with Salary
CREATE OR REPLACE VIEW hr_employee_view AS
SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name,
    s.salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
JOIN Salaries s ON e.emp_id = s.emp_id;

-- Procedure: Give 10% raise to all employees in a department
CREATE OR REPLACE PROCEDURE give_raise(dept INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Salaries s
    SET salary = salary * 1.10
    FROM Employees e
    WHERE s.emp_id = e.emp_id
      AND e.dept_id = dept;
END;
$$;

-- Example call
CALL give_raise(3);

-- Trigger: Automatically set effective_from to current date
CREATE OR REPLACE FUNCTION set_salary_date()
RETURNS TRIGGER AS $$
BEGIN
    NEW.effective_from := CURRENT_DATE;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER salary_date_trigger
BEFORE INSERT ON Salaries
FOR EACH ROW
EXECUTE FUNCTION set_salary_date();