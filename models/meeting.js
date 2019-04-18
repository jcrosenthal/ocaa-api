'use strict';
module.exports = (sequelize, DataTypes) => {
  const Meeting = sequelize.define('Meeting', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    group_id: DataTypes.INTEGER,
    day: DataTypes.STRING,
    start: DataTypes.TIME,
    notes: DataTypes.STRING
  }, {});
  Meeting.associate = function (models) {
    // associations can be defined here
    Meeting.belongsTo(models.Group, {
      foreignKey: 'group_id',
      onDelete: 'CASCADE'
    })
  };
  return Meeting;
};