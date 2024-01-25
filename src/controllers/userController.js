const path = require("path");
const bcrypt = require("bcrypt");
const { validationResult } = require("express-validator");
const db = require("../database/models");
const session = require("express-session");
const { exit } = require("process");

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
      const { email, password } = req.body;
      const userFound = await db.User.findOne({
        where: { email },
      });

      if (!userFound) {
        return res.status(404).send({ message: "Usuario no encontrado" });
      }

      if (!bcrypt.compareSync(password, userFound.password)) {
        return res.status(500).send({ message: "Contraseña incorrecta" });
      }

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

      return res.redirect("/");
    } catch (error) {
      console.error("Error deleting user:", error);
      return res.status(500).send("Internal Server Error");
    }
  },

  updateUser: async (req, res) => {
    try {
      const userId = req.params.id;

      await db.User.update(
        { ...req.body },
        {
          where: { id: userId },
        }
      );

      return res.redirect("/profile");
    } catch (error) {
      console.error("Error updating user:", error);
      return res.status(500).send("Internal Server Error");
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
