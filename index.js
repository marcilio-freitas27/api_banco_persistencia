const express = require('express');

const app = express();

app.get('/', (req, res) =>{
    res.send('teste');
})

app.get('/buscar', (req, res) => {
    const id = req.body.id;
    const {
        
    } = req.params;
})

app.listen(3000, () => console.log('Deu certo.'));