const express = require('express');
const path = require('path');
require("dotenv").config();

const app = express();

app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    const data = {
        title: 'Home',
        css: 'index.css'
    };
    res.render(path.join(__dirname, 'views/index'), data);
});

app.get('/login', (req, res) => {
    const data = {
        title: 'Login',
        css: 'login.css'
    };
    res.render(path.join(__dirname, 'views/login'), data);
});

app.get('/productCart', (req, res) => {
    const data = {
        title: 'Product Cart',
        css: 'productCart.css'
    };
    res.render(path.join(__dirname, 'views/productCart'), data);
});

app.get('/productDetail', (req, res) => {
    const data = {
        title: 'Product Detail',
        css: 'productDetail.css'
    };
    res.render(path.join(__dirname, 'views/productDetail'), data);
});

app.get('/register', (req, res) => {
    const data = {
        title: 'Register',
        css: 'register.css'
    };
    res.render(path.join(__dirname, 'views/register'), data);
});

app.listen(process.env.PORT || 3030, () => {
    console.log(`Servidor iniciado en http://localhost:${process.env.PORT}`);
});

