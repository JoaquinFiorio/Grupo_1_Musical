const express = require("express");
const router = express.Router();
const multer = require("multer");
const path = require("path");
const uuid = require("uuid");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, "../public/img/users"));
  },
  filename: function (req, file, cb) {
    const ext = path.extname(file.originalname);
    const filename = `user-${uuid.v4()}${ext}`;
    cb(null, filename);
  },
});

const upload = multer({ storage: storage });

/* INICIALIZAMOS LOS CONTROLADORES, ES UN OBJETO CON MUCHOS METODOS ADENTRO */

const userController = require("../controllers/userController");
const { userLoginValidator } = require("../Middlewares/loginMiddleware");
const { userRegisterValidator } = require("../Middlewares/registerMiddleware");
const { userEditValidator } = require("../Middlewares/userEditMiddleware");

router.get("/", userController.getUsers);

router.get("/:id", userController.getUser);

router.post("/login", userLoginValidator, userController.signInUser);

router.post(
  "/",
  upload.single("imageFile"),
  userRegisterValidator,
  userController.registerUser
);

router.put(
  "/:id/edit",
  userEditValidator,
  upload.single("imageFile"),
  userController.updateUser
);

router.delete("/:id/delete", userController.deleteUser);

router.get("/", (req, res) => {
  console.log("mandar al login si no inicio sesion");
});

router.get("/", (req, res) => {
  console.log("mandar al home si ya inicio sesion");
});

module.exports = router;
