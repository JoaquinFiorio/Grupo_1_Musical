const express = require("express");
const multer = require("multer");
const productController = require("../controllers/controladorProducto");
const path = require("path");

const router = express.Router();

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.join(__dirname, '../public/img/products'));
    },
    filename: function (req, file, cb) {
        const ext = path.extname(file.originalname);
        const filename = `product-${Date.now()}${ext}`;
        cb(null, filename);
    }
});

const upload = multer({ storage: storage })

router.put('/:id', productController.updateProduct);

router.delete('/:id', productController.deleteProduct);

router.post('/', upload.single('imageFile'), productController.createProduct);

module.exports = router;