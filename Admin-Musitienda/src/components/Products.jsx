import { useState, useEffect } from "react";
import { Link } from "react-router-dom";

const Products = () => {
    const [products, setProducts] = useState([]);
    const [categories, setCategories] = useState(0);

    useEffect(() => {
        const fetchData = async () => {
            try {
                const response = await fetch("http://localhost:3001/api/product");
                const data = await response.json();

                if (data.products) {
                    setProducts(data.products);
                }

                if (data.categories) {
                    setCategories(data.categories);
                }
            } catch (error) {
                console.error("Error al obtener datos", error);
            }
        };

        fetchData();
    }, []);

    const lastAddedProduct = products.length > 0 ? products[products.length - 1] : null;

    return (
        <div>
            <div>
                <Link to={`/`} className="btn btn-outline-info"
                    style={{ position: "absolute", top: "10px", left: "10px", textDecoration: "none", fontSize: "25px" }}>
                    Volver
                </Link>
            </div>
            {lastAddedProduct && (
                <div className="row mb-4 mt-4">
                    <div className="col">
                        <h2>Último Producto Agregado</h2>
                        <Link to={`/products/${lastAddedProduct.id}`}>
                            <div className="card">
                                <img
                                    src={`http://localhost:3030/img/products/${lastAddedProduct.Images[0]?.name || 'default.png'}`}
                                    className="card-img-top"
                                    alt={lastAddedProduct.name || "Producto sin nombre"}
                                />
                                <div className="card-body">
                                    <h5 className="card-title">{lastAddedProduct.name || "Nombre no disponible"}</h5>
                                    <p className="card-text">{lastAddedProduct.description || "Descripción no disponible"}</p>
                                </div>
                            </div>
                        </Link>
                    </div>
                    <div className="col">
                        <h2>Total de Categorías</h2>
                        <strong><p>{categories.length} categorías</p> </strong>
                        <ul className="list-group">
                            {categories.map((category) => (
                                <li key={category.id} className="list-group-item disabled">{category.name}</li>
                            ))}
                        </ul>
                    </div>
                </div>
            )}
            <h2>Lista de Productos</h2>
            {products ? (
                <p>Hay {products.length} productos</p>
            ) : (
                <p>No hay productos</p>
            )}
            {products.length > 0 ? (
                <div className="row row-cols-1 row-cols-md-3 g-4 mt-3">
                    {products.map((product) => (
                        <div key={product.id} className="col-sm-6">
                            <Link to={`/products/${product.id}`}>
                                <div key={product.id} className="card h-100">
                                    <img
                                        src={`http://localhost:3030/img/products/${product.Images[0]?.name || 'default.png'}`}
                                        className="card-img-top"
                                        style={{
                                            width: "100%",
                                        }}
                                        alt={product.name || "Producto sin nombre"}
                                    />
                                    <div className="card-body border-top mt-3" >
                                        <h5 className="card-title">{product.name || "Nombre no disponible"}</h5>
                                        <p className="card-text">{product.description || "Descripción no disponible"}</p>
                                    </div>
                                </div>
                            </Link>
                        </div>
                    ))}
                </div>
            ) : (
                <p>Cargando...</p>
            )}
        </div>
    );
};

export default Products;
