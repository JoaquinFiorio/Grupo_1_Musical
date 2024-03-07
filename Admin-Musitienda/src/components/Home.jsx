import { Link } from "react-router-dom";

const Home = () => {
    return (
        <div className="container text-center mt-5">
            <h1>Dashboard Musitienda</h1>
            <div className="d-flex justify-content-center mt-5 gap-2">
                <Link to="/products" className="btn btn-outline-info btn-lg btn-block">
                    Productos
                </Link>
                <Link to="/users" className="btn btn-outline-info btn-lg btn-block">
                    Usuarios
                </Link>
                <a href="http://localhost:3030/" className="btn btn-outline-info btn-lg btn-block">
                    Volver a la tienda
                </a>
            </div>
        </div>
    );
};

export default Home;
