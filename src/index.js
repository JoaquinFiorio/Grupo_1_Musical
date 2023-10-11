const express = require('express');
const path = require('path');
require("dotenv").config();

const app = express();

app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    res.render(path.join(__dirname, 'views/index'));
});

app.get('/login', (req, res) => {
    res.render(path.join(__dirname, 'views/login'));
});

app.get('/productCart', (req, res) => {
    res.render(path.join(__dirname, 'views/productCart'));
});

app.get('/productDetail', (req, res) => {
    res.render(path.join(__dirname, 'views/productDetail'));
});

app.get('/register', (req, res) => {
    res.render(path.join(__dirname, 'views/register'));
});

app.listen(process.env.PORT || 3030, () => {
    console.log(`Servidor iniciado en http://localhost:${process.env.PORT}`);
});

