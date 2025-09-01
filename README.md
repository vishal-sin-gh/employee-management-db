# employee-management-db
A PostgreSQL HR database project to manage employees, departments, and salary history with sample data, queries, triggers, and stored procedures.
## 🏗️ Database Schema
The database consists of three core tables:

- **Departments** — Stores department names and IDs.
- **Employees** — Stores employee personal information, department assignments, and joining dates.
- **Salaries** — Tracks salary history over time for each employee.

Relationships:
- Each employee belongs to one department.
- Each salary record belongs to one employee.

## ⚙️ Setup Instructions
1. Create the database and tables by running:
   ```sql
   \i Schema.sql
   \i inserts.sql
   \i view_procedure Trigger.sql
\i queries.sql

## 👤 Author
Vishal Singh
singhvishal1947s@gmail.com 
https://github.com/vishal-sin-gh/employee-management-db
