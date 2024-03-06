// ProductDetail.jsx
import React, { useState, useEffect } from "react";
import { useParams, Link } from "react-router-dom";

const ProductDetail = () => {
  const [product, setProduct] = useState({});
  const { id } = useParams();

  useEffect(() => {
    const fetchProductDetails = async () => {
      try {
        const response = await fetch(`http://localhost:3001/api/product/${id}`);
        const data = await response.json();

        if (data.product) {
          setProduct(data.product);
        } else {
          console.error("Producto no encontrado en la API");
        }
      } catch (error) {
        console.error("Error al obtener detalles del producto", error);
      }
    };

    fetchProductDetails();
  }, [id]);

  return (
    <div>
      <h2>Detalles del Producto</h2>
      <div>
        <strong>ID:</strong> {product.id}
      </div>
      <div>
        <strong>Nombre:</strong> {product.name || "Nombre no disponible"}
      </div>
      <div>
        <strong>Marca ID:</strong> {product.brands_id}
      </div>
      <div>
        <strong>Año de fabricación:</strong> {product.fabrication_year}
      </div>
      <div>
        <strong>Precio:</strong> {product.price}
      </div>
      <div>
        <strong>Descripción:</strong> {product.description || "Descripción no disponible"}
      </div>
      <div>
        <strong>Categorías:</strong>
        <ul className="list-unstyled">
          {product.Categories && product.Categories.map((category) => (
            <li key={category.id} className="mb-2">
              <span className="badge bg-secondary">{category.name}</span>
            </li>
          ))}
        </ul>
      </div>

      <div>
        <strong>Imágenes:</strong>
        <div className="d-flex flex-wrap">
          {product.Images && product.Images.map((image) => (
            <img
              key={image.id}
              src={`http://localhost:3030/img/products/${image.name || 'default.png'}`}
              className="img-thumbnail mb-3 me-3"
              style={{ width: "300px", objectFit: "cover" }}
              alt={`Imagen del producto ${product.name}`}
            />
          ))}
        </div>
      </div>
      <div>
        <Link to={`/products`} className="btn btn-outline-info mt-3">
          Volver
        </Link>
      </div>
    </div>
  );
};

export default ProductDetail;
