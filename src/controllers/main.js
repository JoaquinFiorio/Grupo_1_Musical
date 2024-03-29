const path = require("path");
const db = require("../database/models");

/* OBJETO CON TODAS LAS FUNCIONES NECESARIAS PARA RENDERIZAR LAS RUTAS */

const viewController = {
  index: (req, res) => {
    const loggedIn = req.cookies.user ? true : false;
    const data = {
      title: "Home",
      css: "index.css",
      loggedIn,
    };
    return res.render(path.join(__dirname, "../views/index"), data);
  },

  productCart: (req, res) => {
    const loggedIn = req.cookies.user ? true : false;

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
    const loggedIn = req.cookies.user ? true : false;

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

  productList: async (req, res) => {
    const loggedIn = req.cookies.user ? true : false;

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
    const loggedIn = req.cookies.user ? true : false;

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
    const loggedIn = req.cookies.user ? true : false;

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
    const loggedIn = req.cookies.user ? true : false;

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
  register: async (req, res) => {
    const loggedIn = req.cookies.user ? true : false;

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
  login: (req, res) => {
    const loggedIn = req.cookies.user ? true : false;
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
  profile: async (req, res) => {
    const loggedIn = req.cookies.user ? true : false;

    if (loggedIn !== true) {
      return res.redirect("/login");
    }

    try {
      // Obtener el userId de la cookie
      const userId = req.cookies.user;

      // Consultar la base de datos para obtener campos específicos del usuario por ID
      const user = await db.User.findByPk(userId.id, {
        attributes: [
          "id",
          "first_name",
          "last_name",
          "phone_number",
          "email",
          "address",
          "avatar",
          "role_id",
        ],
      });

      if (!user) {
        return res.status(404).send("Usuario no encontrado");
      }

      const data = {
        title: "Profile",
        css: "profile.css",
        loggedIn,
        user,
      };

      res.render(path.join(__dirname, "../views/profile"), data);
    } catch (error) {
      console.error("Error al obtener datos del usuario:", error);
      res.status(500).send("Error interno del servidor");
    }
  },
  profileEdit: async (req, res) => {
    const loggedIn = req.cookies.user ? true : false;

    if (loggedIn !== true) {
      return res.redirect("/login");
    }

    try {
      // Obtener el userId de la cookie
      const userId = req.cookies.user;

      // Consultar la base de datos para obtener campos específicos del usuario por ID
      const user = await db.User.findByPk(userId.id);

      if (!user) {
        return res.status(404).send("Usuario no encontrado");
      }

      const provinces = await db.Province.findAll();
      if (!provinces) {
        return res.status(404).send("Provincia no encontrada");
      }

      const cities = await db.City.findAll();
      if (!cities) {
        return res.status(404).send("Ciudad no encontrada");
      }

      const roles = await db.Role.findAll();
      if (!roles) {
        return res.status(404).send("Rol no encontrado");
      }

      const data = {
        title: "ProfileEdit",
        css: "profileEdit.css",
        loggedIn,
        user,
        provinces,
        cities,
        roles,
      };

      res.render(path.join(__dirname, "../views/profileEdit"), data);
    } catch (error) {
      console.error("Error al obtener datos del usuario:", error);
      res.status(500).send("Error interno del servidor");
    }
  },
  errorUser: (req, res) => {
    const loggedIn = req.cookies.user ? true : false;
    const data = {
      title: "Error",
      css: "errorUser.css",
      loggedIn,
    };

    res.render(path.join(__dirname, "../views/errorUser"), data);
  },
  logout: (req, res) => {
    res.clearCookie("user");
    res.redirect("/login");
  },
};

module.exports = viewController;
