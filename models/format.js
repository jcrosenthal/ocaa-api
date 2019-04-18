'use strict';
module.exports = (sequelize, DataTypes) => {
  const Format = sequelize.define('Format', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    code: DataTypes.STRING,
    display: DataTypes.STRING
  }, {});
  Format.associate = function (models) {
    // associations can be defined here
  };
  return Format;
};