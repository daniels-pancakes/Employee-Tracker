const express = require('express');
const { Pool } = require('pg');
const { input } = require('./lib/input.js');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const pool = new Pool(
    {
      // Enter PostgreSQL username
      user: 'postgres',
      // Enter PostgreSQL password
      password: '!pg$QL_896',
      host: 'localhost',
      database: 'employees_db'
  },
  console.log('Connected to the employees_db database!')
)

pool.connect();

async function init() {
    const { menu } = await input();
    switch (menu) {
        case 'View Departments':
            break; 
        case 'View Roles':
            break;
        case 'View Employees':
            break;
        case 'Add Department': 
        case 'Add Role':
        case 'Update Employee Role':
}
init();



pool.query('SELECT * FROM departments', function (err, {rows}) {
    console.log(rows);
});

pool.query('INSERT INTO departments', function (err, {rows}) {
    console.log(rows);
});

pool.query('SELECT * FROM roles', function (err, {rows}) {
    console.log(rows);
});

pool.query('INSERT INTO roles', function (err, {rows}) {
    console.log(rows);
});

pool.query('SELECT * FROM employees', function (err, {rows}) {
    console.log(rows);
});

pool.query('INSERT INTO employees', function (err, {rows}) {
    console.log(rows);
});

app.use((req, res) => {
    res.status(404).end();
  });

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });

input.input();