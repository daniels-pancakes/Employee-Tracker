const inquirer = require('inquirer');
async function input() {
    const response = await inquirer.prompt([
        {
            type: 'list',
            name:'menu',
            message: 'Employee Tracker Main Menu\n Please select from the following options:',
            choices: ['View Departments', 'View Roles','View Employees',
            'Add Department','Add Role','Update Employee Role'
            ]
        }
    ]);
    return response;
}

module.exports = {
    input
};