'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('Groups', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING
      },
      format: {
        type: Sequelize.STRING
      },
      is_wheelchair_accessible: {
        type: Sequelize.BOOLEAN
      },
      address_administrative_area_level_1: {
        type: Sequelize.STRING
      },
      address_administrative_area_level_2: {
        type: Sequelize.STRING
      },
      address_administrative_area_level_3: {
        type: Sequelize.STRING
      },
      address_country: {
        type: Sequelize.STRING
      },
      address_lat: {
        type: Sequelize.DECIMAL(10,6)
      },
      address_lng: {
        type: Sequelize.DECIMAL(10,6)
      },
      address_locality: {
        type: Sequelize.STRING
      },
      address_neighborhood: {
        type: Sequelize.STRING
      },
      location: {
        type: Sequelize.STRING
      },
      address_postal_code: {
        type: Sequelize.INTEGER
      },
      address_postal_code_suffix: {
        type: Sequelize.INTEGER
      },
      address_route: {
        type: Sequelize.STRING
      },
      address_street_number: {
        type: Sequelize.INTEGER
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('Groups');
  }
};