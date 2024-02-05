// Validacion de nombre, apellido, contrasena, correo electronico utilizando validator.js
const form = document.getElementById("productForm");

form.addEventListener("submit", (event) => {
  // Obtiene el valor del campo de correo electrónico
  event.preventDefault();
  const productname_Input = document.getElementById("product_name").value;
  const year_Input = document.getElementById("product_year").value;
  const price_Input = document.getElementById("product_price").value;
  const description_Input = document.getElementById(
    "product_description"
  ).value;

  //aca sacamos el total de las imagenes subidas
  const imagenes = document.getElementById("imagenes").files;
  const totalImagenes = imagenes.length;

  const fecha = new Date();
  const anio = fecha.getFullYear();

  // const validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

  // Utiliza validator.js para verificar si el valor es un nombre válido
  if (!validator.isAlpha(productname_Input)) {
    alert("Por favor, introduce un nombre válido. Solo letras.");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es un apellido válido
  if (
    !validator.isInt(year_Input, {
      min: 1900,
      max: anio,
    })
  ) {
    alert("Por favor, ingrese un año entre 1900 y " + anio);
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es un correo electrónico válido
  if (
    !validator.isFloat(price_Input, {
      min: 1.0,
    })
  ) {
    alert("Por favor, ingrese un precio mayor a 0.");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar la descripcion del producto
  if (
    !validator.isLength(description_Input, {
      min: 1,
      max: 300,
    })
  ) {
    alert("Por favor, describe el producto. Debe tener maximo 300 caracteres");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar la cantidad de imágenes subidas
  if (!validator.isInt(totalImagenes.toString(), { min: 1, max: 10 })) {
    alert("Por favor, ingrese entre 1 y 10 imágenes.");
    event.preventDefault();
    return false;
  }

  return true;
});
