var mysql      = require('mysql');
var conn = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'dbusuario'
});

// funções para banco de dados
const buscaDados = (req, res) => {
    conn.query('SELECT * FROM clientes', (err,result) => {
      if (err) {
        throw err;
      }
      res.status(200).send(result.rows);
    });
  }

  module.exports = buscaDados;