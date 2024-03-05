import React from "react";
import { Link } from "react-router-dom";

const Home = () => {
    return (
        <div className="container text-center mt-5">
            <h1>Dashboard Musitienda</h1>
            <div className="d-flex justify-content-center mt-5">
                <Link to="/products" className="btn btn-outline-info btn-lg btn-block me-2">
                    Productos
                </Link>
                <Link to="/users" className="btn btn-outline-info btn-lg btn-block">
                    Usuarios
                </Link>
            </div>
        </div>
    );
};

export default Home;
