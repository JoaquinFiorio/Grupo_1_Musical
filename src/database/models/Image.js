module.exports = (sequelize, dataTypes) => {
  let alias = "Image";
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    // created_at: dataTypes.TIMESTAMP,
    // updated_at: dataTypes.TIMESTAMP,
    name: {
      type: dataTypes.TEXT,
      allowNull: false,
    },
  };
  let config = {
    timestamps: false,
    createdAt: "created_at",
    updatedAt: "updated_at",
    deletedAt: false,
    tableName: "images",
  };
  const Image = sequelize.define(alias, cols, config);

  Image.associate = function (models) {
    Image.belongsToMany(models.Product, {
      through: models.Product_image,
      foreignKey: "images_id",
    });
  };
  return Image;
};
