const path = require("path");
const fs = require("fs")

const productsFilePath = path.join(__dirname, '../data/products.json');
let products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const productController = {
	getProductDetail: (req, res) => {
		const product = products.find((product) => product.id == req.params.id);
		res.render('detail', { product });
	},
	updateProduct: (req, res) => {
		const indexProduct = products.findIndex((product) => product.id == req.params.id);
		products[indexProduct] = {
			...products[indexProduct],
			...req.body
		};
		fs.writeFileSync(productsFilePath, JSON.stringify(products, null, 2));
		res.redirect('/adminList');
	},
	createProduct: (req, res) => {
		const newProduct = {
			id: products[products.length - 1].id + 1,
			...req.body,
			image: req.file?.filename || "default-image.png"
		};
		products.push(newProduct);
		fs.writeFileSync(productsFilePath, JSON.stringify(products, null, 2));
		res.redirect('/productList');
	},
	deleteProduct: (req, res) => {
		const indexProduct = products.findIndex((product) => product.id == req.params.id);
		products.splice(indexProduct, 1);
		fs.writeFileSync(productsFilePath, JSON.stringify(products, null, 2));
		res.redirect('/productList');
	}
};


module.exports = productController;