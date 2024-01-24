module.exports = (sequelize, dataTypes) => {
  let alias = "User";
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
      defaultValue: null,
    },
    last_name: {
      type: dataTypes.STRING(100),
      defaultValue: null,
    },
    phone_number: {
      type: dataTypes.STRING(100),
      defaultValue: null,
    },
    email: {
      type: dataTypes.TEXT,
      allowNull: false,
    },
    address: {
      type: dataTypes.STRING(100),
      defaultValue: null,
    },
    postal_code: {
      type: dataTypes.CHAR(6),
      defaultValue: null,
    },
    cities_id: {
      type: dataTypes.INTEGER,
      defaultValue: 1,
    },
    role_id: {
      type: dataTypes.INTEGER,
      defaultValue: 2,
    },
    password: {
      type: dataTypes.TEXT,
      allowNull: false,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "Users",
  };
  const User = sequelize.define(alias, cols, config);

  //relaciones
  User.associate = function (models) {
    User.belongsTo(models.Role, {
      as: "role",
      foreignKey: "role_id",
    });
    User.belongsTo(models.City, {
      as: "city",
      foreignKey: "cities_id",
    });
  };
  return User;
};
