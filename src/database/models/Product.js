const Product_image = require("./Product_image");

module.exports = (sequelize, dataTypes) => {
  let alias = "Product";
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    // created_at: dataTypes.TIMESTAMP,
    // updated_at: dataTypes.TIMESTAMP,
    name: {
      type: dataTypes.STRING(100),
      allowNull: false,
    },
    brands_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    fabrication_year: {
      type: dataTypes.CHAR(4),
      allowNull: false,
    },
    price: {
      type: dataTypes.DECIMAL(10, 2),
      allowNull: false,
    },
    description: {
      type: dataTypes.TEXT,
      allowNull: true,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "products",
  };
  const Product = sequelize.define(alias, cols, config);

  Product.associate = function (models) {
    Product.belongsTo(models.Brand, {
      as: "brand",
      foreignKey: "brands_id",
      onDelete: "CASCADE",
    }),
      Product.belongsToMany(models.Image, {
        through: models.Product_image,
        foreignKey: "products_id",
        otherKey: "images_id",
        onDelete: "CASCADE",
      }),
      Product.belongsToMany(models.Category, {
        through: models.Product_category,
        foreignKey: "products_id",
        otherKey: "categories_id",
        onDelete: "CASCADE",
      }),
      Product.hasMany(models.Order_detail, {
        foreignKey: "products_id",
        onDelete: "CASCADE",
      });
  };
  return Product;
};
