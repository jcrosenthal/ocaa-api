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
        address_administrative_area_level_1: DataTypes.STRING,
        address_administrative_area_level_2: DataTypes.STRING,
        address_administrative_area_level_3: DataTypes.STRING,
        address_country: DataTypes.STRING,
        address_lat: DataTypes.STRING,
        address_lng: DataTypes.STRING,
        address_locality: DataTypes.STRING,
        address_neighborhood: DataTypes.STRING,
        location: DataTypes.STRING,
        address_postal_code: DataTypes.INTEGER,
        address_postal_code_suffix: DataTypes.INTEGER,
        address_route: DataTypes.STRING,
        address_street_number: DataTypes.INTEGER
    }, {});
    Group.associate = function (models) {
        // associations can be defined here
        Group.hasMany(models.Meeting,{
            foreignKey: 'group_id',
        })
    };
    return Group;
};