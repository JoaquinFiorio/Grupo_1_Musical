const express = require("express");
const multer = require("multer");
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

const productController = require("../controllers/productController");

//router.get('/:id/edit', productController.editProduct);
router.put('/:id/edit', productController.updateProduct);

router.post('/create', upload.single('imageFile'), productController.createProduct);

router.delete('/:id/delete', productController.deleteProduct);

module.exports = router;