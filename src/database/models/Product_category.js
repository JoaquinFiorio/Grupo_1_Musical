module.exports = (sequelize, dataTypes) => {
  let alias = "Product_category";
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    // created_at: dataTypes.TIMESTAMP,
    // updated_at: dataTypes.TIMESTAMP,
    products_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    categories_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "products_categories",
  };
  const Product_category = sequelize.define(alias, cols, config);

  Product_category.associate = function (models) {
    Product_category.belongsTo(models.Product, {
      as: "product",
      foreignKey: "products_id",
      through: "product_category",
      onDelete: "CASCADE",
    });
    Product_category.belongsTo(models.Category, {
      as: "category",
      foreignKey: "categories_id",
      through: "product_category",
      onDelete: "CASCADE",
    });
  };
  return Product_category;
};
