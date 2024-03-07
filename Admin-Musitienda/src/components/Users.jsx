import { useState, useEffect } from "react";
import { Link } from "react-router-dom";

const Users = () => {
  const [users, setUsers] = useState([]);
  const [totalUsers, setTotalUsers] = useState(0);

  useEffect(() => {
    const fetchUsers = async () => {
      const response = await fetch("http://localhost:3001/api/user");
      const data = await response.json();
      setUsers(data.users || []);
      setTotalUsers(data.totalUsers || 0);
    };

    fetchUsers();
  }, []);

  return (
    <div>
      <div>
        <Link to={`/`} className="btn btn-outline-info"
          style={{ position: "absolute", top: "10px", left: "10px", textDecoration: "none", fontSize: "25px" }}>
          Volver
        </Link>
      </div>
      <h2>Lista de Usuarios</h2>
      {users.length > 0 ? (
        <div>
          <p>Hay {totalUsers} usuarios</p>
          <div className="flex row-wrap gap-4"
            style={{ display: "flex", flexWrap: "wrap", justifyContent: "center" }}>
            {users.map((user) => (
              <div key={user.id}>
                <Link to={`/users/${user.id}`}>
                  <div className="card">
                    <div className="card-body">
                      <div className="foto-perfil rounded-circle img-thumbnail"
                        style={{ backgroundImage: `url(http://localhost:3030/img/users/${user.avatar || 'default-avatar.jpg'})` }}></div>
                      <h3 className="card-title">{user.first_name + " " + user.last_name || "Nombre no disponible"}</h3>
                    </div>
                  </div>
                </Link>
              </div>
            ))}
          </div>
        </div>
      ) : (
        <p>Cargando...</p>
      )}
    </div>
  );
};

export default Users;
