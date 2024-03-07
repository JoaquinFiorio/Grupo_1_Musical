import { useState, useEffect } from "react";
import { useParams, Link } from "react-router-dom";

const UserDetail = () => {
  const [user, setUser] = useState({});
  const { id } = useParams();

  useEffect(() => {
    const fetchUserDetails = async () => {
      try {
        const response = await fetch(`http://localhost:3001/api/user/${id}`);
        const data = await response.json();

        if (data.user) {
          setUser(data.user);
        } else {
          console.error("Usuario no encontrado en la API");
        }
      } catch (error) {
        console.error("Error al obtener detalles del usuario", error);
      }
    };

    fetchUserDetails();
  }, [id]);

  return (
    <div>
      <div>
        <Link to={`/users`} className="btn btn-outline-info"
          style={{ position: "absolute", top: "10px", left: "10px", textDecoration: "none", fontSize: "25px" }}>
          Volver
        </Link>
      </div>
      <h2>Detalles del Usuario</h2>
      <div>
        <img
          src={`http://localhost:3030/img/users/${user.avatar || 'default-avatar.jpg'}`}
          className="rounded-circle img-thumbnail"
          style={{ width: "400px", height: "400px", objectFit: "cover" }} 
          alt={user.first_name || "Nombre no disponible"}
        />
      </div>
      <div>
        <strong>Nombre:</strong> {user.first_name || "Nombre no disponible"}
      </div>
      <div>
        <strong>Apellido:</strong> {user.last_name || "Apellido no disponible"}
      </div>
      <div>
        <strong>Teléfono:</strong> {user.phone_number || "Teléfono no disponible"}
      </div>
      <div>
        <strong>Email:</strong> {user.email || "Email no disponible"}
      </div>
    </div>
  );
};

export default UserDetail;
