const path = require("path");
const { getProducts } = require("../models/model");

/* OBJETO CON TODAS LAS FUNCIONES NECESARIAS PARA RENDERIZAR LAS RUTAS */

const viewController = {
    index: (req, res) => {
        const data = {
            title: 'Home',
            css: 'index.css'
        };
        res.render(path.join(__dirname, '../views/index'), data);
    },
    login: (req, res) => {
        const data = {
            title: 'Login',
            css: 'login.css'
        };
        res.render(path.join(__dirname, '../views/login'), data);
    },
    productCart: (req, res) => {
        const data = {
            title: 'Product Cart',
            css: 'productCart.css'
        };
        res.render(path.join(__dirname, '../views/productCart'), data);
    },
    productDetail: (req, res) => {
        const product = getProducts().find((product) => product.id == req.params.id);
        const data = {
            title: 'Product Detail',
            css: 'productDetail.css',
            productDetail: product
        };
        res.render(path.join(__dirname, '../views/productDetail'), data);
    },
    register: (req, res) => {
        const data = {
            title: 'Register',
            css: 'register.css'
        };
        res.render(path.join(__dirname, '../views/register'), data);
    },
    productList: (req, res) => {
        const data = {
            title: 'Product List',
            css: 'productList.css',
            products: getProducts()
        };
        res.render(path.join(__dirname, '../views/productList'), data);
    },
    productUploader: (req, res) => {
        const data = {
            title: 'Product Uploader',
            css: 'productUploader.css'
        };
        res.render(path.join(__dirname, '../views/productUploader'), data);
    },
    productEdit: (req, res) => {
        const product = getProducts().find((product) => product.id == req.params.id);
        const data = {
            title: 'Product Edit',
            css: 'productEdit.css',
            productEdit: product
        };
        res.render(path.join(__dirname, '../views/productEdit'), data);
    },
    adminList: (req, res) => {
        const data = {
            title: 'Admin list',
            css: 'adminList.css',
            products: getProducts()

        };
        res.render(path.join(__dirname, '../views/adminproductlist'), data);
    }
}


module.exports = viewController;