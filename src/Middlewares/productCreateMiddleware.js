//Nombre de producto, año de fabricacion, descripcion,precio
const { body } = require("express-validator");

const productCreateValidator = [
  body("name").isString().notEmpty().withMessage("Ingrese un nombre de producto valido, sin numeros"),
  body("fabrication_year").isInt().notEmpty().withMessage("Ingrese un año valido"),
  body("description").isLength({max: 300}).notEmpty().withMessage("Ingrese una descripcion de producto"),
  body("price").isFloat({min: 1.0}).notEmpty().withMessage("El precio debe ser mayor a 0"),
];

module.exports = {
  productCreateValidator,
};
