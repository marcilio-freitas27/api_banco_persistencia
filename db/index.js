// const { send } = require('express/lib/response');
var mysql      = require('mysql');
var conn = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'dbbanco'
});

const connectionTeste = (req, res) => {
  if(conn){
    res.send('Conectado.')
  }else {
    res.send('Erro.')
  }
}

// funções para banco de dados
const buscaDados = (req, res) => {
    conn.query('SELECT * FROM correntista', (err,result) => {
      if (err) {
        throw err;
      }
      res.status(200).send(result.rows);
    });
  }

module.exports = {
  buscaDados,
  connectionTeste
}

