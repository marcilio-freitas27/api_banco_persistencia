const express = require('express');
const db = require('../api_banco_persistencia/db/index');

const app = express();

app.get('/', (req, res) =>{
    res.send('teste');
})

app.get('/buscar', db.buscaDados);
app.get('/teste', db.connectionTeste);

app.listen(3000, () => console.log('http://localhost:3000/'));