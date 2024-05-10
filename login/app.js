const express = require('express');
const bodyParser = require('body-parser'); //body-parser cria o acesso para a requisição das informações
const mysql = require('mysql2');

const db = mysql.createConnection({
    host:'localhost',
    user:'mari',
    password:'SENAI123',
    database:'login'
});

db.connect((error)=>{
    if (error){
        console.log('Erro ao conectar banco de dados')
    } else {
        console.log('Conectado ao MySQL')
    }
});

const app = express();
const port=3000;

app.use(bodyParser.urlencoded({extended:true}));

app.get('/', (req, res)=>{ //declarar qual é o caminho da rota escolhida, no caso '/'
    res.sendFile(__dirname + '/login.html') //__dirname serve para pegar o diretório atual desde o começo da raiz
});

app.post('/login', (req, res)=>{ //declarando a rota do post /login
    const username = req.body.usuario;
    const password = req.body.senha;

    db.query('SELECT password FROM user WHERE username = ?', [username], (error, results)=>{
        if (results.length > 0){
            const passwordBD = results[0].password
            console.log(passwordBD)
        } else {
            console.log('Usuário não cadastrado')
        }
    })
})

app.listen(port, ()=>{
    console.log(`Servidor rodando no endereço: http://localhost/:${port}`)
});