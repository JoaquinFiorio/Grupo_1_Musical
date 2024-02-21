const path = require("path");
const db = require("../database/models");

/* OBJETO CON TODAS LAS FUNCIONES NECESARIAS PARA RENDERIZAR LAS RUTAS */

const viewController = {
<<<<<<< HEAD
    index: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Home',
            css: 'index.css',
            loggedIn
        };
        return res.render(path.join(__dirname, '../views/index'), data);
    },
    login: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Login',
            css: 'login.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.redirect("/");
        }
        return res.render(path.join(__dirname, '../views/login'), data);
    },
    productCart: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Product Cart',
            css: 'productCart.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/productCart'), data);
        }
        return res.redirect("/login")
    },
    productDetail: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const product = getProducts().find((product) => product.id == req.params.id);
        const data = {
            title: 'Product Detail',
            css: 'productDetail.css',
            productDetail: product,
            loggedIn
        };
        return res.render(path.join(__dirname, '../views/productDetail'), data);
    },
    register: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Register',
            css: 'register.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.redirect("/");
        }
        return res.render(path.join(__dirname, '../views/register'), data);
    },
    productList: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Product List',
            css: 'productList.css',
            products: getProducts(),
            loggedIn
        };
        return res.render(path.join(__dirname, '../views/productList'), data);
    },
    productUploader: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Product Uploader',
            css: 'productUploader.css'
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/productUploader'), data);
        }
        return res.redirect('/login');
    },
    productEdit: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const product = getProducts().find((product) => product.id == req.params.id);
        const data = {
            title: 'Product Edit',
            css: 'productEdit.css',
            productEdit: product,
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/productEdit'), data);
        }
        return res.redirect('/login');
    },
    adminList: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Admin list',
            css: 'adminList.css',
            products: getProducts(),
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/adminproductlist'), data);
        }
        return res.redirect('/login');
    },
    profile: (req, res) => {
        const loggedIn = req.cookies.usuario ? true : false;
        const data = {
            title: 'Profile',
            css: 'profile.css',
            loggedIn
        };
        if(loggedIn === true) {
            return res.render(path.join(__dirname, '../views/profile'), data);
        }
        return res.redirect('/login');
    }, 
    errorUser: (req, res) => {
        return res.render(path.join(__dirname, '../views/errorUser'));
=======
  index: (req, res) => {
    const data = {
      title: "Home",
      css: "index.css",
    };
    res.render(path.join(__dirname, "../views/index"), data);
  },
  login: (req, res) => {
    const data = {
      title: "Login",
      css: "login.css",
    };
    res.render(path.join(__dirname, "../views/login"), data);
  },
  productCart: (req, res) => {
    const data = {
      title: "Product Cart",
      css: "productCart.css",
    };
    res.render(path.join(__dirname, "../views/productCart"), data);
  },
  productDetail: async (req, res) => {
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
      };

      res.render(path.join(__dirname, "../views/productDetail"), data);
    } catch (error) {
      console.error("Error fetching product detail:", error);
      res.status(500).send("Internal Server Error");
>>>>>>> d91d90a8c2461ccb0ac6c2582dcf4e381fd39952
    }
  },
  register: async (req, res) => {
    const validator = require("validator");
    const data = {
      title: "Register",
      css: "register.css",
      validator: validator,
    };
    res.render(path.join(__dirname, "../views/register"), data);
  },
  productList: async (req, res) => {
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
      };
      res.render(path.join(__dirname, "../views/productList"), data);
    } catch (error) {
      console.error("Error fetching product list:", error);
      res.status(500).send("Internal Server Error");
    }
  },

  productUploader: async (req, res) => {
    const brands = await db.Brand.findAll();
    const categories = await db.Category.findAll();
    const data = {
      title: "Product Uploader",
      css: "productUploader.css",
      brands: brands,
      categories: categories,
    };
    res.render(path.join(__dirname, "../views/productUploader"), data);
  },

  productEdit: async (req, res) => {
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
      };

      res.render(path.join(__dirname, "../views/productEdit"), data);
    } catch (error) {
      console.error("Error fetching product detail:", error);
      res.status(500).send("Internal Server Error");
    }
  },
  adminList: async (req, res) => {
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
      };
      res.render(path.join(__dirname, "../views/adminproductlist"), data);
    } catch (error) {
      console.error("Error fetching product list:", error);
      res.status(500).send("Internal Server Error");
    }
  },
  profile: (req, res) => {
    const data = {
      title: "Profile",
      css: "profile.css",
    };
    res.render(path.join(__dirname, "../views/profile"), data);
  },
  errorUser: (req, res) => {
    res.render(path.join(__dirname, "../views/errorUser"));
  },
};

module.exports = viewController;
