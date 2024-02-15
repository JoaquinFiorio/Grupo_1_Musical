const { body } = require("express-validator");

const userRegisterValidator = [
  body("first_name").notEmpty().withMessage("El nombre es requerido"),
  body("last_name").notEmpty().withMessage("El apellido es requerido"),
  body("password").notEmpty().withMessage("La contraseña es requerida"),
  body("email")
    .notEmpty()
    .withMessage("El E-mail es requerido")
    .isEmail()
    .withMessage("Ingresa un E-mail Valido"),
];

module.exports = {
  userRegisterValidator,
};
