const express = require("express");
const router = express.Router();
const multer = require('multer');
const path = require('path');
const { userRegisterValidator } = require("../Middlewares/logMiddleware")

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.join(__dirname, '../public/img/users'));
    },
    filename: function (req, file, cb) {
        const ext = path.extname(file.originalname);
        const filename = `user-${Date.now()}${ext}`;
        cb(null, filename);
    }
});

const upload = multer({ storage: storage })

/* INICIALIZAMOS LOS CONTROLADORES, ES UN OBJETO CON MUCHOS METODOS ADENTRO */

const userController = require("../controllers/userController");

router.get("/", userController.getUsers)

router.get("/:id", userController.getUser)

router.post("/login", userController.signInUser)

router.post("/", upload.single('imageFile'), userRegisterValidator, userController.registerUser)

router.put("/", userController.updateUser)

router.delete("/", userController.deleteUser)

router.get("/", (req, res) => {
    console.log("mandar al login si no inicio sesion")
})

router.get("/", (req, res) => {
    console.log("mandar al home si ya inicio sesion")
})

module.exports = router;