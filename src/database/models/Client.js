module.exports = (sequelize, dataTypes) => {
  let alias = "Client";
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    // created_at: dataTypes.TIMESTAMP,
    // updated_at: dataTypes.TIMESTAMP,
    user: {
      type: dataTypes.STRING(100),
      allowNull: false,
    },
    first_name: {
      type: dataTypes.STRING(100),
      allowNull: false,
    },
    last_name: {
      type: dataTypes.STRING(100),
      allowNull: false,
    },
    phone_number: {
      type: dataTypes.STRING(100),
      allowNull: false,
    },
    email: {
      type: dataTypes.TEXT,
      allowNull: false,
    },
    address: {
      type: dataTypes.STRING(100),
      allowNull: false,
    },
    postal_code: {
      type: dataTypes.CHAR(6),
      allowNull: false,
    },
    cities_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    role_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
    password: {
      type: dataTypes.TEXT,
      allowNull: false,
    },
  };
  let config = {
    timestamps: true,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "clients",
  };
  const Client = sequelize.define(alias, cols, config);

  //relaciones
  Client.associate = function (models) {
    Client.belongsTo(models.Role, {
      as: "role",
      foreignKey: "role_id",
    });
    Client.belongsTo(models.City, {
      as: "city",
      foreignKey: "cities_id",
    });
  };
  return Client;
};
