const { body } = require("express-validator");

const userEditValidator = [
  body("first_name").notEmpty().withMessage("El nombre es requerido"),
  body("last_name").notEmpty().withMessage("El apellido es requerido"),
  body("phone").notEmpty().withMessage("El telefono es requerido"),
  body("email")
    .notEmpty()
    .withMessage("El E-mail es requerido")
    .isEmail()
    .withMessage("Ingresa un E-mail Valido"),
  body("address").notEmpty().withMessage("La dirección es requerida"),
  body("postal_code").notEmpty().withMessage("El Código Postal es requerido"),
];

module.exports = {
  userEditValidator,
};
