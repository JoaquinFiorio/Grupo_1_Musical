// Validacion de nombre, apellido, contrasena, correo electronico utilizando validator.js
const form = document.getElementById("userEditForm");

form.addEventListener("submit", (event) => {
  // Obtiene el valor del campo de correo electrónico
  const first_nameInput = document.getElementById("first_name").value;
  const last_nameInput = document.getElementById("last_name").value;
  const phoneInput = document.getElementById("phone").value;
  const emailInput = document.getElementById("email").value;
  const addressInput = document.getElementById("address").value;
  const postal_codeInput = document.getElementById("postal_code").value;

  //aca sacamos el total de las imagenes subidas
  const imagenes = document.getElementById("imageFile").files;
  console.log("Imagenes: ", imagenes);

  // const validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  // Utiliza validator.js para verificar si el valor es un nombre válido
  if (!validator.matches(first_nameInput, /^[A-Za-z\s]+$/)) {
    alert("Por favor, introduce un nombre válido. Solo letras y espacios.");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es un apellido válido
  if (!validator.matches(last_nameInput, /^[A-Za-z\s]+$/)) {
    alert("Por favor, introduce un apellido válido. Solo letras y espacios.");
    event.preventDefault();
    return false;
  }

  const phoneRegex = /^\+\d+/;
  if (!phoneRegex.test(phoneInput)) {
    alert(
      "Por favor, introduce un numero de telefono valido, ejemplo: +56912345678"
    );
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es un correo electrónico válido
  if (!validator.isEmail(emailInput)) {
    alert("Por favor, introduce un correo electrónico válido.");
    event.preventDefault();
    return false;
  }

  const allowedPattern = /^[a-zA-Z0-9\s.,#]+$/;
  if (!validator.matches(addressInput, allowedPattern)) {
    alert(
      "Por favor, introduce una dirección válida. Puede contener letras, números, espacios y algunos caracteres especiales."
    );
    event.preventDefault();
    return false;
  }

  if (!validator.isNumeric(postal_codeInput)) {
    alert(
      "El campo no debe estar vacio, introduzca un valor numerico de 4 digitos"
    );
    event.preventDefault();
    return false;
  }

  if (imagenes.length != 1) {
    alert("Por favor, suba una imagen de perfil");
    event.preventDefault();
    return false;
  }
  return true;
});
