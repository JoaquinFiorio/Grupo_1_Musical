module.exports = (sequelize, dataTypes) => {
  let alias = "City";
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
    province_id: {
      type: dataTypes.INTEGER,
      allowNull: false,
    },
  };
  let config = {
    timestamps: true,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "cities",
  };
  const City = sequelize.define(alias, cols, config);

  City.associate = function (models) {
    City.belongsTo(models.Province, {
      as: "province",
      foreignKey: "province_id",
    });
  };
  return City;
};
