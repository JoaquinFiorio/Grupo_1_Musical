const product = require("./product");

module.exports = (sequelize, dataTypes) => {
  let alias = "Stock";
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
    products_amount: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "stocks",
  };
  const Stock = sequelize.define(alias, cols, config);

  Stock.associate = function (models) {
    Stock.belongsTo(models.Product, {
      as: "product",
      foreignKey: "products_id",
    });
  };
  return Stock;
};
