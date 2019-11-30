'use strict';

module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define('User', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    email: DataTypes.STRING,
    password: DataTypes.STRING,
  }, {});

  User.associate = function (models) {};

  return User;
};