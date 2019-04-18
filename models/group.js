'use strict';
module.exports = (sequelize, DataTypes) => {
    const Group = sequelize.define('Group', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        name: DataTypes.STRING,
        is_wheelchair_accessible: DataTypes.BOOLEAN,
        administrative_area_level_1: DataTypes.STRING,
        administrative_area_level_2: DataTypes.STRING,
        administrative_area_level_3: DataTypes.STRING,
        country: DataTypes.STRING,
        lat: DataTypes.DECIMAL(10,6),
        lng: DataTypes.DECIMAL(10,6),
        locality: DataTypes.STRING,
        neighborhood: DataTypes.STRING,
        location: DataTypes.STRING,
        postal_code: DataTypes.INTEGER,
        postal_code_suffix: DataTypes.INTEGER,
        route: DataTypes.STRING,
        street_number: DataTypes.INTEGER
    }, {});
    Group.associate = function (models) {
        // associations can be defined here
        Group.hasMany(models.Meeting, {
            foreignKey: 'group_id',
        })
    };
    return Group;
};