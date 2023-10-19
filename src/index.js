const express = require('express');
const path = require('path');
require("dotenv").config();

/* REQUERIMOS LAS RUTAS DEL ARCHIVO */

const vistaRutas = require("./rutas/ruta");

/* INICIALIZAMOS TODOS LOS METODOS DE EXPRESS */
const app = express();

/* MOTOR DE PLANTILLA */
app.set('view engine', 'ejs');

/* ARCHIVOS ACCESIBLES PARA TODOS, RUTA ABSOLUTA */
app.use(express.static(path.join(__dirname, 'public')));

/* RUTAS */
app.use("/", vistaRutas);

app.listen(process.env.PORT || 3030, () => {
    console.log(`Servidor iniciado en http://localhost:${process.env.PORT}`);
});