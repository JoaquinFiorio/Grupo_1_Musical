const express = require("express");
const router = express.Router();

/* INICIALIZAMOS LOS CONTROLADORES, ES UN OBJETO CON MUCHOS METODOS ADENTRO */

const controladorVistas = require("../controladores/controlador");

/* RUTAS CON SUS FUNCIONES */

router.get('/', controladorVistas.index);

router.get('/login', controladorVistas.login);

router.get('/productCart', controladorVistas.productCart);

router.get('/productDetail', controladorVistas.productDetail);

router.get('/register', controladorVistas.register);

router.get('/productList', controladorVistas.productList);

router.get('/productUploader', controladorVistas.productUploader);

router.get('/productEdit', controladorVistas.productEdit);

router.get('/adminList', controladorVistas.adminList);

module.exports = router;

