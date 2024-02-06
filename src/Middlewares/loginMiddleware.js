const { body } = require("express-validator");

const userLoginValidator = [
  body("password").notEmpty().withMessage("La contraseña es requerida"),
  body("email")
    .notEmpty()
    .withMessage("El E-mail es requerido")
    .isEmail()
    .withMessage("Ingresa un E-mail Valido"),
];

module.exports = {
  userLoginValidator,
};
