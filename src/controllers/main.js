const path = require("path");
const { getProducts } = require("../models/model");

/* OBJETO CON TODAS LAS FUNCIONES NECESARIAS PARA RENDERIZAR LAS RUTAS */

const viewController = {
    index: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Home',
            css: 'index.css',
            loggedIn
        };
        return res.render(path.join(__dirname, '../views/index'), data);
    },
    login: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Login',
            css: 'login.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.redirect("/");
        }
        return res.render(path.join(__dirname, '../views/login'), data);
    },
    productCart: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Product Cart',
            css: 'productCart.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/productCart'), data);
        }
        return res.redirect("/login")
    },
    productDetail: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const product = getProducts().find((product) => product.id == req.params.id);
        const data = {
            title: 'Product Detail',
            css: 'productDetail.css',
            productDetail: product,
            loggedIn
        };
        return res.render(path.join(__dirname, '../views/productDetail'), data);
    },
    register: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Register',
            css: 'register.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.redirect("/");
        }
        return res.render(path.join(__dirname, '../views/register'), data);
    },
    productList: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Product List',
            css: 'productList.css',
            products: getProducts(),
            loggedIn
        };
        return res.render(path.join(__dirname, '../views/productList'), data);
    },
    productUploader: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Product Uploader',
            css: 'productUploader.css'
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/productUploader'), data);
        }
        return res.redirect('/login');
    },
    productEdit: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const product = getProducts().find((product) => product.id == req.params.id);
        const data = {
            title: 'Product Edit',
            css: 'productEdit.css',
            productEdit: product,
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/productEdit'), data);
        }
        return res.redirect('/login');
    },
    adminList: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Admin list',
            css: 'adminList.css',
            products: getProducts(),
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/adminproductlist'), data);
        }
        return res.redirect('/login');
    },
    profile: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Profile',
            css: 'profile.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/profile'), data);
        }
        return res.redirect('/login');
    }, 
    errorUser: (req, res) => {
        return res.render(path.join(__dirname, '../views/errorUser'));
    }
}


module.exports = viewController;