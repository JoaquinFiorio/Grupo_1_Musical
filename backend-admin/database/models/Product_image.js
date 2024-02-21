module.exports = (sequelize, dataTypes) => {
  let alias = "Product_image";
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
    images_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "products_images",
  };
  const Product_image = sequelize.define(alias, cols, config);

  Product_image.associate = function (models) {
    Product_image.belongsToMany(models.Product, {
      as: "product",
      foreignKey: "products_id",
      through: "product_image",
      onDelete: "CASCADE",
    });
    Product_image.belongsToMany(models.Image, {
      as: "image",
      foreignKey: "images_id",
      through: "product_image",
      onDelete: "CASCADE",
    });
  };

  return Product_image;
};
