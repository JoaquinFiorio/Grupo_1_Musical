module.exports = (sequelize, dataTypes) => {
  let alias = "Order";
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    // created_at: dataTypes.TIMESTAMP,
    // updated_at: dataTypes.TIMESTAMP,
    clients_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    order_status: {
      type: dataTypes.STRING(100),
      defaultValue: "pending",
    },
    request_date: {
      type: dataTypes.DATE,
      allowNull: false,
    },
    delivery_date: {
      type: dataTypes.DATE,
      allowNull: false,
    },
    arrival_date: {
      type: dataTypes.DATE,
      allowNull: false,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "orders",
  };
  const Order = sequelize.define(alias, cols, config);

  Order.associate = function (models) {
    Order.belongsTo(models.Client, {
      as: "client",
      foreignKey: "clients_id",
    });
  };
  return Order;
};
