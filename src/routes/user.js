const express = require("express");
const router = express.Router();

/* INICIALIZAMOS LOS CONTROLADORES, ES UN OBJETO CON MUCHOS METODOS ADENTRO */

const userControllers = require("../controllers/userController");

router.get("/", (req, res) => {
    res.send("Soy un crack")
})

router.get("/", (req, res) => {
    res.send("Soy un crack")
})

router.post("/", (req, res) => {
    res.send("Soy un crack")
})

router.put("/", (req, res) => {
    res.send("Soy un crack")
})

router.delete("/", (req, res) => {
    res.send("Soy un crack")
})

module.exports = router;