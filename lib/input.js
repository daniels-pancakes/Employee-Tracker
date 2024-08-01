const inquirer = require('inquirer');
function input() {
    return inquirer.prompt([
        {
            type: 'list',
            name:'shape',
            message: 'Employee Tracker Main Menu\n Please select from the following options:',
            choices: ['View Departments', 'View Roles','View Employees',
            'Add Department','Add Role','Update Employee Role'
            ]
        }
    ]);
}

module.exports = {
    input
};