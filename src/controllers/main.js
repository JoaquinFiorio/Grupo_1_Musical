const path = require("path");
const db = require("../database/models");

/* OBJETO CON TODAS LAS FUNCIONES NECESARIAS PARA RENDERIZAR LAS RUTAS */

const viewController = {
  index: (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;
    const data = {
      title: "Home",
      css: "index.css",
      loggedIn,
    };
    return res.render(path.join(__dirname, "../views/index"), data);
  },
  login: (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;
    const data = {
      title: "Login",
      css: "login.css",
      loggedIn,
    };
    if (loggedIn === true) {
      return res.redirect("/");
    }
    res.render(path.join(__dirname, "../views/login"), data);
  },
  productCart: (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    const data = {
      title: "Product Cart",
      css: "productCart.css",
      loggedIn,
    };
    if (loggedIn !== true) {
      return res.redirect("/login");
    }
    res.render(path.join(__dirname, "../views/productCart"), data);
  },
  productDetail: async (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    try {
      const productId = req.params.id;

      const product = await db.Product.findByPk(productId, {
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
        return res.status(404).send("Producto no encontrado");
      }

      const data = {
        title: "Product Detail",
        css: "productDetail.css",
        productDetail: product,
        loggedIn,
      };
      if (loggedIn !== true) {
        return res.redirect("/login");
      }
      res.render(path.join(__dirname, "../views/productDetail"), data);
    } catch (error) {
      console.error("Error fetching product detail:", error);
      res.status(500).send("Internal Server Error");
    }
  },
  register: async (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    const validator = require("validator");
    const data = {
      title: "Register",
      css: "register.css",
      validator: validator,
      loggedIn,
    };
    if (loggedIn === true) {
      return res.redirect("/");
    }
    res.render(path.join(__dirname, "../views/register"), data);
  },
  productList: async (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    try {
      const products = await db.Product.findAll({
        include: [
          {
            model: db.Image,
            through: { attributes: ["products_id", "images_id"] },
          },
        ],
      });
      const data = {
        title: "Product List",
        css: "productList.css",
        products: products,
        loggedIn,
      };
      if (loggedIn !== true) {
        return res.redirect("/login");
      }
      res.render(path.join(__dirname, "../views/productList"), data);
    } catch (error) {
      console.error("Error fetching product list:", error);
      res.status(500).send("Internal Server Error");
    }
  },

  productUploader: async (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    const brands = await db.Brand.findAll();
    const categories = await db.Category.findAll();
    const data = {
      title: "Product Uploader",
      css: "productUploader.css",
      brands: brands,
      categories: categories,
      loggedIn,
    };
    if (loggedIn !== true) {
      return res.redirect("/login");
    }
    res.render(path.join(__dirname, "../views/productUploader"), data);
  },

  productEdit: async (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    const brands = await db.Brand.findAll();
    const categories = await db.Category.findAll();
    try {
      const productId = req.params.id;

      const product = await db.Product.findByPk(productId, {
        include: [
          {
            model: db.Image,
            through: { attributes: ["products_id", "images_id"] },
          },
          {
            model: db.Category,
            through: "product_category",
          },
        ],
      });

      if (!product) {
        return res.status(404).send("Producto no encontrado");
      }

      const data = {
        title: "Product Edit",
        css: "productEdit.css",
        productEdit: product,
        brands: brands,
        categories: categories,
        loggedIn,
      };
      if (loggedIn !== true) {
        return res.redirect("/login");
      }
      res.render(path.join(__dirname, "../views/productEdit"), data);
    } catch (error) {
      console.error("Error fetching product detail:", error);
      res.status(500).send("Internal Server Error");
    }
  },
  adminList: async (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    try {
      const products = await db.Product.findAll({
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
      const data = {
        title: "Admin List",
        css: "adminlist.css",
        products: products,
        loggedIn,
      };
      if (loggedIn !== true) {
        return res.redirect("/login");
      }
      res.render(path.join(__dirname, "../views/adminproductlist"), data);
    } catch (error) {
      console.error("Error fetching product list:", error);
      res.status(500).send("Internal Server Error");
    }
  },
  profile: (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    const data = {
      title: "Profile",
      css: "profile.css",
      loggedIn,
    };
    if (loggedIn !== true) {
      return res.redirect("/login");
    }
    res.render(path.join(__dirname, "../views/profile"), data);
  },
  errorUser: (req, res) => {
    const loggedIn = req.cookies.usuario ? true : false;

    res.render(path.join(__dirname, "../views/errorUser"));
  },
};

module.exports = viewController;
