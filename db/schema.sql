DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

\c employees_db;

CREATE TABLE departments (
  department_id SERIAL PRIMARY KEY,
  department_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE roles (
  role_id SERIAL PRIMARY KEY,
  role_title VARCHAR(50) UNIQUE NOT NULL,
  salary DECIMAL NOT NULL,
  management BOOLEAN,
  department_id INTEGER,
  FOREIGN KEY (department_id)
  REFERENCES departments(department_id)
);

CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER NULL,
  FOREIGN KEY (role_id) REFERENCES roles(role_id),
  FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

\i db/seeds.sql;