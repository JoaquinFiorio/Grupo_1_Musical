const express = require("express");
const router = express.Router();

/* INICIALIZAMOS LOS CONTROLADORES, ES UN OBJETO CON MUCHOS METODOS ADENTRO */

const viewsControllers = require("../controllers/main");

/* RUTAS CON SUS FUNCIONES */

router.get('/', viewsControllers.index);

router.get('/login', viewsControllers.login);

router.get('/productCart', viewsControllers.productCart);

router.get('/productDetail/:id', viewsControllers.productDetail);

router.get('/register', viewsControllers.register);

router.get('/productList', viewsControllers.productList);

router.get('/productUploader', viewsControllers.productUploader);

router.get('/productEdit/:id', viewsControllers.productEdit);

router.get('/adminList', viewsControllers.adminList);

module.exports = router;

