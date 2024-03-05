const path = require("path");
const db = require("../database/models");
const { where } = require("sequelize");
const { validationResult } = require("express-validator");

/* Otra forma de llamar a cada uno de los modelos */
/*const product = db.Musitienda;*/

const productController = {
  updateProduct: async (req, res) => {
    try {
      const error = validationResult(req);
      if (!error.isEmpty()) {
        return res.send({ errors: error.mapped(), oldData: req.body });
      }

      const productId = req.params.id;
      const updatedProductData = req.body; // Datos actualizados del formulario

      // Buscar el producto por ID
      const product = await db.Product.findByPk(productId, {
        include: [
          { model: db.Image, as: "Images" },
          { model: db.Category, as: "Categories" },
        ],
      });

      // Verificar si el producto existe
      if (!product) {
        return res.status(404).send("Producto no encontrado");
      }

      // Actualizar los datos del producto
      await product.update(updatedProductData);

      const updatedCategories = Array.isArray(req.body.categories)
        ? req.body.categories
        : [req.body.categories];

      // Eliminar las categorías existentes asociadas al producto
      await db.Product_category.destroy({
        where: {
          products_id: productId,
        },
      });

      // Asociar las nuevas categorías al producto
      const productCategories = await Promise.all(
        updatedCategories.map(async (categoryId) => {
          return {
            products_id: product.id,
            categories_id: categoryId,
          };
        })
      );
      await db.Product_category.bulkCreate(productCategories);

      // Actualizar las imágenes del producto
      const images = req.files;
      if (images) {
        // Eliminar las imágenes existentes asociadas al producto
        await db.Product_image.destroy({
          where: {
            products_id: productId,
          },
        });

        // Asociar las nuevas imágenes al producto
        const productImages = await Promise.all(
          images.map(async (image) => {
            try {
              const imageCreated = await db.Image.create({
                name: image.filename,
              });
              await db.Product_image.create({
                products_id: productId,
                images_id: imageCreated.id,
              });
              console.log(`Saved ${imageCreated.name} to the database.`);
            } catch (error) {
              console.error(
                `Error saving ${image.filename} to the database: ${error.message}`
              );
            }
          })
        );
      }

      // Redirigir o enviar una respuesta exitosa
      res.redirect("/productList");
    } catch (error) {
      console.error("Error editing product:", error);
      res.status(500).send("Internal Server Error");
    }
  },

  createProduct: async (req, res) => {
    try {
      const error = validationResult(req);
      if (!error.isEmpty()) {
        return res.send({ errors: error.mapped(), oldData: req.body });
      }
      // Obtén la información del formulario
      const { name, description, brands_id, price, fabrication_year } =
        req.body;

      // 1. Crear el producto
      const product = await db.Product.create({
        name,
        description,
        brands_id,
        fabrication_year,
        price,
      });

      // 2. Asociar las imágenes con el producto
      const images = req.files;
      const productImages = await images.map(async (image) => {
        try {
          const imageCreated = await db.Image.create({
            name: image.filename,
          });
          await db.Product_image.create({
            products_id: product.id,
            images_id: imageCreated.id,
          });
          console.log(`Saved ${imageCreated} to the database.`);
        } catch (error) {
          console.error(
            `Error saving ${image.filename} to the database: ${error.message}`
          );
        }
      });
      try {
        await Promise.all(productImages);
        console.log("All image filenames saved to the database.");
      } catch (error) {
        console.error(
          `Error saving image filenames to the database: ${error.message}`
        );
      }
      // 3. Asociar las categorías con el producto
      const categories = Array.isArray(req.body.categories)
        ? req.body.categories
        : [req.body.categories];
      const productCategories = await categories.map(async (category) => {
        try {
          await db.Product_category.create({
            products_id: product.id,
            categories_id: category,
          });
          console.log(`Saved ${db.Product_category.id} to the database.`);
        } catch (error) {
          console.error(
            `Error saving ${category.name} to the database: ${error.message}`
          );
        }
      });
      try {
        await Promise.all(productCategories);
        console.log("All categories saved to the database.");
      } catch (error) {
        console.error(
          `Error saving categories to the database: ${error.message}`
        );
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

      // Eliminar el producto en orden de las relaciones
      await db.Product_image.destroy({
        where: {
          products_id: productId,
        },
      });
      await db.Product_category.destroy({
        where: {
          products_id: productId,
        },
      });
      await product.destroy();

      res.redirect("/adminList");
    } catch (error) {
      console.error("Error deleting product:", error);
      res.status(500).send("Internal Server Error");
    }
  },
};
module.exports = productController;
