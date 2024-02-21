const express = require("express");
const path = require("path");
require("dotenv").config();
const methodOverride = require("method-override");
const session = require("express-session");
const mysql = require("mysql2");

/* cONECTAMOS A LA BASE DE DATOS */
const sql = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "Musitienda",
});

sql.connect(function (err) {
  if (err) {
    console.log("No se conectó la database brother");
  } else {
    console.log("Esaa!! Se conecto la database brother");
  }
});

/* REQUERIMOS LAS RUTAS DEL ARCHIVO */

const apiRoutes = require("./routes/route");

/* INICIALIZAMOS TODOS LOS METODOS DE EXPRESS */
const app = express();

/* MOTOR DE PLANTILLA */
app.set("view engine", "ejs");

/* ARCHIVOS ACCESIBLES PARA TODOS, RUTA ABSOLUTA */
app.use(express.static(path.join(__dirname, "uploads")));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(methodOverride("_method"));
app.use(
    session({
        secret: "abc-123",
        resave: false,
        saveUninitialized: true,
    })
);
app.use(cookieParser());

/* RUTAS */
app.use("/api", apiRoutes);

app.listen(process.env.PORT || 3030, () => {
  console.log(`Servidor iniciado en http://localhost:${process.env.PORT}`);
});
