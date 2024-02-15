// Validacion de nombre, apellido, contrasena, correo electronico utilizando validator.js
const form = document.getElementById("login_form");

form.addEventListener("submit", (event) => {
  // Obtiene el valor del campo de correo electrónico
  const emailInput = document.getElementById("email").value;
  const passwordInput = document.getElementById("password").value;

  // const validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;



  // Utiliza validator.js para verificar si el valor es un correo electrónico válido
  if (!validator.isEmail(emailInput)) {
    alert("Por favor, introduce un correo electrónico válido.");
    event.preventDefault();
    return false;
  }

  // Utiliza validator.js para verificar si el valor es una contraseña válida
  if (validator.isEmpty(passwordInput)) {
    alert(
      "El campo no debe estar vacio"
    );
    event.preventDefault();
    return false;
  }

  return true;
});
