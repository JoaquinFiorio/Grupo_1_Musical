// Validacion de nombre, apellido, contrasena, correo electronico utilizando validator.js
const form = document.getElementById("registerForm");

form.addEventListener("submit", (event) => {
  // Obtiene el valor del campo de correo electrónico
  const first_nameInput = document.getElementById("first_name").value;
  const last_nameInput = document.getElementById("last_name").value;
  const emailInput = document.getElementById("email").value;
  const passwordInput = document.getElementById("password").value;

  // const validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

  // Utiliza validator.js para verificar si el valor es un nombre válido
  if (!validator.isAlpha(first_nameInput)) {
    alert("Por favor, introduce un nombre válido. Solo letras.");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es un apellido válido
  if (!validator.isAlpha(last_nameInput)) {
    alert("Por favor, introduce un apellido válido. solo letras.");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es un correo electrónico válido
  if (!validator.isEmail(emailInput)) {
    alert("Por favor, introduce un correo electrónico válido.");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es una contraseña válida
  if (!validator.isAlphanumeric(passwordInput)) {
    alert(
      "Por favor, introduce una contraseña válida. Debe tener al menos 8 caracteres"
    );
    event.preventDefault();
    return false;
  }

  return true;
});
