import React, { useState, useEffect } from "react";
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
      <h2>Lista de Usuarios</h2>
      {users.length > 0 ? (
        <div>
          <p>Hay {totalUsers} usuarios</p>
          <div className="row row-cols-1 row-cols-md-3 g-4">
            {users.map((user) => (
              <div key={user.id} className="col">
                <Link to={`/users/${user.id}`}>
                  <div className="card">
                    <div className="card-body">
                      <img src={`http://localhost:3030/img/users/${user.avatar || 'default-avatar.jpg'}`}
                        className="card-img-top"
                        alt={user.first_name || "Nombre no disponible"} />
                      <h5 className="card-title">{user.first_name || "Nombre no disponible"}</h5>
                      <p className="card-text">{user.email || "Correo no disponible"}</p>
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
