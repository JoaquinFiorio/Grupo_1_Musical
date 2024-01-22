const path = require("path");
const db = require("../database/models");

/* Otra forma de llamar a cada uno de los modelos */
const product = db.Musitienda;

const productController = {
  updateProduct: (req, res) => {},
  createProduct: async (req, res) => {
    try {
      // Obtén la información del formulario
      const {
        name,
        description,
        brands_id,
        category,
        subCategory,
        price,
        fabrication_year,
      } = req.body;

      // 1. Crear el producto
      const product = await db.Product.create({
        name,
        description,
        brands_id,
        fabrication_year,
        price,
      });

      // REEEEEEEEEEEEEEEEEVISAR
      // REEEEEEEEEEEEEEEEEVISAR
      // REEEEEEEEEEEEEEEEEVISAR
      // REEEEEEEEEEEEEEEEEVISAR
      // REEEEEEEEEEEEEEEEEVISAR
      // REEEEEEEEEEEEEEEEEVISAR

      // 2. Asociar las imágenes con el producto
      const images = req.files;
      console.log("Imágenes recibidas:", images);
      if (images && images.length > 0) {
        // Crea un array con los objetos necesarios para la tabla intermedia
        const productImages = await Promise.all(
          images.map(async (image) => {
            // Crea la relación en la tabla intermedia
            return {
              products_id: product.id,
              images_id: image.filename,
            };
          })
        );

        // Asocia las imágenes con el producto en la tabla intermedia
        await db.ProductImage.bulkCreate(productImages);
        await db.Image.bulkCreate(images);
      }

      // Redirigir u enviar una respuesta exitosa
      res.redirect("/productList");
    } catch (error) {
      console.error("Error creating product:", error);
      res.status(500).send("Internal Server Error");
    }
  },

  deleteProduct: async (req, res) => {
    try {
      const productId = req.params.id;

      // Buscar el producto por ID
      const product = await db.Product.findByPk(productId);

      // Verificar si el producto existe
      if (!product) {
        return res.status(404).send("Producto no encontrado");
      }

      // Eliminar el producto
      await product.destroy();

      res.redirect("/adminList");
    } catch (error) {
      console.error("Error deleting product:", error);
      res.status(500).send("Internal Server Error");
    }
  },
};
module.exports = productController;
