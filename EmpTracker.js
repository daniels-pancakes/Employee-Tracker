const express = require('express');
const { Pool } = require('pg');
const input = require('./lib/input.js');

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

app.use((req, res) => {
    res.status(404).end();
  });

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });

input.input();