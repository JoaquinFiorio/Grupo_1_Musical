const express = require("express");
const multer = require("multer");
const path = require("path");
const uuid = require("uuid");

const router = express.Router();
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(__dirname, "../public/img/products"));
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname);
    const filename = `product-${uuid.v4()}${ext}`;
    cb(null, filename);
  },
});

const upload = multer({
  storage: storage,
  limits: {
    files: 10,
    fileSize: 1024 * 1024 * 5,
  },
});
const productController = require("../controllers/productController");
const {
  productEditValidator,
} = require("../Middlewares/productEditMiddleware");
const {
  productCreateValidator,
} = require("../Middlewares/productCreateMiddleware");

//router.get('/:id/edit', productController.editProduct);
router.put(
  "/:id/edit",
  upload.array("imageFile", 10),
  productEditValidator,
  productController.updateProduct
);

router.post(
  "/create",
  upload.array("imageFile", 10),
  productCreateValidator,

  productController.createProduct
);

router.delete("/:id/delete", productController.deleteProduct);
module.exports = router;
