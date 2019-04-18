'use strict';
module.exports = (sequelize, DataTypes) => {
  const Day = sequelize.define('Day', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    code: DataTypes.STRING,
    display: DataTypes.STRING
  }, {});
  Day.associate = function (models) {
    // associations can be defined here
  };
  return Day;
};