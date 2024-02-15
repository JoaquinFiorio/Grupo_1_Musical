module.exports = (sequelize, dataTypes) => {
  let alias = "Category";
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
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "categories",
  };
  const Category = sequelize.define(alias, cols, config);

  Category.associate = function (models) {
    Category.belongsToMany(models.Product, {
      through: models.Product_category,
      foreignKey: "categories_id",
      otherKey: "products_id",
    });
  };
  return Category;
};
