-- Insert Departments
INSERT INTO Departments (dept_name)
VALUES 
('HR'), 
('BPO'), 
('IT'),
('MARKETING'), 
('SALES');

-- Insert Employees
INSERT INTO Employees (emp_id, emp_name, email_id, dept_id, joining_date)
VALUES
(1, 'Meena Iyer', 'meena.iyer1@example.com', 2, '2024-01-01'),
(2, 'Meena Sharma', 'meena.sharma2@example.com', 1, '2024-02-02'),
(3, 'Kiran Sharma', 'kiran.sharma3@example.com', 2, '2023-04-04'),
(4, 'Rajesh Sharma', 'rajesh.sharma4@example.com', 2, '2021-01-01'),
(5, 'Deepak Chopra', 'deepak.chopra5@example.com', 3, '2021-08-08'),
(7, 'Abhinash Singh', 'abhinashsingh@gmail.com', 3, '2021-02-07'),
(8, 'Abhinandan Sinha', 'abhinandan25@gmail.com', 2, '2020-01-25'),
(9, 'Rajesh Sha', 'rajesh@gmail.com', 5, '2021-08-21'),
(10, 'Anjali Sharma', 'anjalisharma@gmail.com', 4, '2021-04-20'),
(11, 'Shweta Singh', 'shwetasingh@gmail.com', 1, '2020-07-01');

-- Insert Salaries
INSERT INTO Salaries (emp_id, salary, effective_from)
VALUES  
(1, 27000, '2024-01-01'),
(2, 35000, '2024-02-02'),
(3, 40000, '2024-02-01'),
(4, 40000, '2021-01-01'),
(5, 50000, '2021-08-08'),
(7, 25000, '2021-02-07'),
(8, 65000, '2020-01-25'),
(9, 45000, '2021-08-02'),
(10, 35000, '2021-04-20'),
(11, 36000, '2020-07-01');