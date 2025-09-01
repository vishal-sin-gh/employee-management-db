-- Create Database
CREATE DATABASE Company1;

-- Department Table
CREATE TABLE Departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

-- Employees Table
CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email_id VARCHAR(100) UNIQUE NOT NULL,
    dept_id INT REFERENCES Departments(dept_id),
    joining_date DATE NOT NULL
);

-- Salaries Table
CREATE TABLE Salaries (
    emp_id INT REFERENCES Employees(emp_id),
    salary NUMERIC(10,2) NOT NULL,
    effective_from DATE NOT NULL DEFAULT CURRENT_DATE
);