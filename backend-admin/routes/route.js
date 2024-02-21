const express = require("express");
const router = express.Router();
const mainController = require("../controllers/controller");

router.get("/user", mainController.getUsers);

router.get("/user/:id", mainController.getUser);

router.get("/product", mainController.getProducts);

router.get("/product/:id", mainController.getProduct);


module.exports = router;

