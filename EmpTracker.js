const express = require('express');
const { Pool } = require('pg');
// The external script contains input handling for our application main menu.
const { input } = require('./lib/input.js');
const inquirer = require('inquirer');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

let exit = false;

const pool = new Pool(
    {
      // Enter PostgreSQL username
      user: 'postgres',
      // Enter PostgreSQL password
      password: '!pg$QL_896',
      port: 5432,
      host: 'localhost',
      database: 'employees_db',
      keepAlive: true
  },
  console.log('Connected to the employees_db database!')
)

pool.connect();

async function init() {
    console.clear();
    // Pulls input from the input.js file to be processed through a switch-case selection handler.
    const { menu } = await input();
    switch (menu) {
        case 'View Departments':
            await pool.query('SELECT department_name, department_id FROM departments', function (err, {rows}) {
                console.table(rows);
            });
            break; 
        case 'View Roles':
            await pool.query(`SELECT 
                            roles.role_id,
                            roles.role_title,
                            roles.salary, 
                            roles.management, 
                            roles.department_id,
                            departments.department_name
                        FROM 
                            roles
                        JOIN 
                        departments ON roles.department_id = departments.department_id
                        `, function (err, {rows}) {
                console.table(rows);
                });
            break;
        case 'View Employees':
            await pool.query(`SELECT
            employees.employee_id,
            employees.first_name,
            employees.last_name,
            employees.role_id,
            roles.role_title,
            roles.salary,
            employees.manager_id
            FROM employees
            JOIN
                roles ON employees.role_id = roles.role_id
        `, function (err, {rows}) {
                console.table(rows);
            });
            break;
        case 'Add Department':
                const addDept = await inquirer.prompt([
                    {
                        type:'input',
                        name:'deptName',
                        message: 'Enter department name:',
                    }
                ]);
                await pool.query(`INSERT INTO departments (department_name)
                                VALUES ($1)
                `, [addDept.deptName]);
                    console.log('New department successfully added.')
            break;
        case 'Add Role':
                const addRole = await inquirer.prompt([
                    {
                        type:'input',
                        name:'roleName',
                        message: 'Enter name of New Role:',
                    },
                    {
                        type:'input',
                        name:'roleSal',
                        message: 'Enter Role Salary:',
                    },
                    {
                        type:'input',
                        name:'roleOpts',
                        message: 'Enter Role Department ID:',
                    }
                ]);
                await pool.query(`INSERT INTO roles (role_title, salary, department_id)
                VALUES ($1, $2, $3)
`, [addRole.roleName, addRole.roleSal, addRole.roleOpts]);
    console.log('New role successfully added.')
            break;
        case 'Add Employee':
                const addEmp = await inquirer.prompt([
                    {
                        type:'input',
                        name:'empFName',
                        message: 'Enter Employee First Name:',
                    },
                    {
                        type:'input',
                        name:'empLName',
                        message: 'Enter Employee Last Name:',
                    },
                    {
                        type:'input',
                        name:'empRole',
                        message: 'Enter Employee Role ID:',
                    },
                    {
                        type:'input',
                        name:'empMgr',
                        message: 'Enter Manager ID:',
                    }
                ]);
                await pool.query(`INSERT INTO employees (first_name, last_name, role_id, manager_id)
                VALUES ($1, $2, $3, $4)
`, [addEmp.empFName, addEmp.empLName, addEmp.empRole, addEmp.empMgr]);
    console.log('New employee successfully added.')
            break;
        case 'Update Employee Role':
                const upEmpRole = await inquirer.prompt([
                    {
                        type:'input',
                        name:'empID',
                        message: 'Enter Employee ID:',
                    },
                    {
                        type:'input',
                        name:'updateRoleID',
                        message: 'Enter New Role ID:',
                    },
                ]);
                await pool.query(`UPDATE employees
                                SET role_id = $2
                                WHERE employee_id = $1
`, [upEmpRole.empID, upEmpRole.updateRoleID]);
    console.log('New employee successfully added.')
            break;
        case 'Exit':
            console.log('Thank you for using the Employee Tracker. Good bye.');
            process.exit();
            return false;
        break;
        }
        return true;
    }

app.use((req, res) => {
    res.status(404).end();
  });

app.listen(PORT, () => {
    console.log(`\nServer running on port ${PORT}`);
  });

(async function main() {
    let keepRunning = true;    
    while (keepRunning) {
        keepRunning = await init();
    }
    pool.end();
})();
