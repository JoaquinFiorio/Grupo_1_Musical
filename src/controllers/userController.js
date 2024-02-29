const path = require("path");
const bcrypt = require("bcrypt");
const { validationResult, cookie } = require("express-validator");
const db = require("../database/models");
const session = require("express-session");
const { log } = require("console");

const userController = {
  getUser: (req, res) => {},
  getUsers: (req, res) => {},
  registerUser: async (req, res) => {
    try {
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
        return res.send({ errors: errors.mapped(), oldData: req.body });
      }
      const existingUser = await db.User.findOne({
        where: { email: req.body.email },
      });
      if (existingUser) {
        return res.status(400).send({ message: "user already exists" });
      }
      const { first_name, last_name, email } = req.body;
      await db.User.create({
        first_name,
        last_name,
        email,
        password: bcrypt.hashSync(req.body.password, 10),
        avatar: req.file?.filename || "default-image.jpg",
      });

      return res.redirect("/");
    } catch (error) {
      console.error("Error registering user:", error);
      return res.status(500).send("Internal Server Error");
    }
  },

  signInUser: async (req, res) => {
    try {
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
        return res.send({ errors: errors.mapped(), oldData: req.body });
      }
      const { email, password } = req.body;
      const userFound = await db.User.findOne({
        where: { email },
      });

      if (!userFound) {
        return res.render(path.join(__dirname, "../views/errorUser"), {
          message: "Usuario no encontrado",
          title: "Error",
          css: "errorUser.css",
        });
      }

      if (!bcrypt.compareSync(password, userFound.password)) {
        return res.render(path.join(__dirname, "../views/errorUser"), {
          message: "Contraseña incorrecta",
          title: "Error",
          css: "errorUser.css",
        });
      }
      res.cookie("user", userFound, { maxAge: 3600000, httpOnly: true });

      return res.redirect("/");
    } catch (error) {
      console.error("Error signing in user:", error);
      return res.status(500).send("Internal Server Error");
    }
  },

  deleteUser: async (req, res) => {
    try {
      const userId = req.params.id;

      await db.User.destroy({
        where: { id: userId },
      });

      res.clearCookie("user");
      return res.redirect("/");
    } catch (error) {
      console.error("Error deleting user:", error);
      return res.status(500).send("Internal Server Error");
    }
  },
  updateUser: async (req, res) => {
    try {
      const userId = req.params.id;

      // Obtén el usuario de la base de datos
      const user = await db.User.findByPk(userId);

      if (!user) {
        return res.status(404).send("Usuario no encontrado");
      }

      console.log("Ruta del archivo:", req.file ? req.file.filename : null);
      console.log("Usuario antes de la actualización:", user);
      const avatar = req.file ? req.file.filename : user.avatar;

      // Actualiza otros campos del usuario
      await user.update({
        first_name: req.body.first_name,
        last_name: req.body.last_name,
        phone_number: req.body.phone,
        email: req.body.email,
        address: req.body.address,
        postal_code: req.body.postal_code,
        cities_id: req.body.city_id,
        role_id: req.body.role_id,
        avatar: avatar,
      });

      console.log("Usuario actualizado:", user);

      return res.redirect("/profile");
    } catch (error) {
      console.error("Error actualizando usuario:", error);
      return res.status(500).send("Error interno del servidor");
    }
  },

  login: (req, res) => {
    const user = req.session.user;
    if (!user) {
      return res.send("Usuario no logeado");
    }
    return res.render("profile", { user });
  },
};
module.exports = userController;
