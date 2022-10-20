const express = require('express');
const db = require('../api_banco_persistencia/db/index');

const app = express();

app.get('/', (req, res) =>{
    res.send('teste');
})

app.get('/saldo', db.saldo);
app.get('/teste', db.connectionTeste);
app.get('/extrato', db.extrato);
app.get('/deposito', db.deposito);
app.get('/saque', db.saque);
app.get('/transferencia', db.tranferencia);


app.listen(3000, () => console.log('http://localhost:3000/'));