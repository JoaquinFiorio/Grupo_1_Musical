const { name } = require("ejs");
const db = require("../database/models");

const mainController = {
  getUsers: async (req, res) => {
    try {
      const users = await db.User.findAll({
        attributes: ["id", "first_name", "email"],
      });
      if (!users) {
        return res.status(404).send({ message: "Users Not Found" });
      }
      const totalUsers = users.length;
      return res.status(200).send({ users, totalUsers });
    } catch (error) {
      console.log(error);
      res.status(500).send({ message: "Internal Server Error", error });
    }
  },
  getUser: async (req, res) => {
    try {
      const user = await db.User.findByPk(req.params.id, {
        attributes: [
          "first_name",
          "last_name",
          "phone_number",
          "email",
          "avatar",
        ],
      });
      if (!user) {
        return res.status(404).send({ message: "User Not Found" });
      }
      return res.status(200).send({ user });
    } catch (error) {
      console.log(error);
      res.status(500).send({ message: "Internal Server Error", error });
    }
  },
  getProducts: async (req, res) => {
    try {
      const products = await db.Product.findAll({
        include: [
          {
            model: db.Image,
            through: { attributes: ["products_id", "images_id"] },
          },
        ],
      });
      if (!products) {
        return res.status(404).send({ message: "Products Not Found" });
      }
      const totalProducts = products.length;
      return res.status(200).send({ products, totalProducts });
    } catch (error) {
      console.log(error);
      res.status(500).send({ message: "Internal Server Error", error });
    }
  },
  getProduct: async (req, res) => {
    try {
      const product = await db.Product.findByPk(req.params.id, {
        include: [
          {
            model: db.Image,
            through: "product_image",
          },
          {
            model: db.Category,
            through: "product_category",
          },
        ],
      });
      if (!product) {
        return res.status(404).send({ message: "Product Not Found" });
      }
      return res.status(200).send({ product });
    } catch (error) {
      console.log(error);
      res.status(500).send({ message: "Internal Server Error", error });
    }
  },
};

module.exports = mainController;
