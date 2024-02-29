import React, { useState, useEffect } from "react";

const Products = () => {
    const [products, setProducts] = useState([]);

    useEffect(() => {
        const fetchProducts = async () => {
            const response = await fetch("http://localhost:3001/api/product");
            const data = await response.json();
            console.log(data.products[0].Images[0]);
            setProducts(data.products);
        };

        fetchProducts();
    }, []);

    return (
        <div>
            <h2>Lista de Productos</h2>
            {products ? (
                <p>Hay {products.length} productos</p>
            ) : (
                <p>No hay productos</p>
            )}
            {products.length > 0 ? (
                <div className="row row-cols-1 row-cols-md-3 g-4">
                    {products.map((product) => (
                        <div key={product.id} className="col">
                            <div key={product.id} className="card">
                                <img
                                    src={`http://localhost:3030/img/products/${product.Images[0]?.name || 'default.jpg'}`}
                                    className="card-img-top"
                                    alt={product.name || "Producto sin nombre"}
                                />
                                <div className="card-body">
                                    <h5 className="card-title">{product.name || "Nombre no disponible"}</h5>
                                    <p className="card-text">{product.description || "Descripción no disponible"}</p>
                                </div>
                            </div>
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
