module.exports = (sequelize, dataTypes) => {
  let alias = "Order_detail";
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    // created_at: dataTypes.TIMESTAMP,
    // updated_at: dataTypes.TIMESTAMP,
    order_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    product_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    product_count: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    price: {
      type: dataTypes.DECIMAL(10, 2),
      allowNull: false,
    },
    discount: {
      type: dataTypes.DECIMAL(10, 2),
      defaultValue: 0,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "orders_details",
  };
  const Order_detail = sequelize.define(alias, cols, config);

  Order_detail.associate = function (models) {
    Order_detail.belongsTo(models.Order, {
      as: "order",
      foreignKey: "order_id",
      onDelete: "CASCADE",
    });
    Order_detail.belongsTo(models.Product, {
      as: "product",
      foreignKey: "product_id",
      onDelete: "CASCADE",
    });
  };
  return Order_detail;
};
