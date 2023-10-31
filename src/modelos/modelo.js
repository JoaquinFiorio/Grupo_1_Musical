const fs = require('fs');
const path = require('path');

const productsFilePath = path.join(__dirname, '../data/products.json');
const userFilePath = path.join(__dirname, '../data/user.json');

function getProducts() {
    return JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));
}

function getUsers() {
    return JSON.parse(fs.readFileSync(userFilePath, 'utf-8'));
}

module.exports = {
    getProducts,
    getUsers
}