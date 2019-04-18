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
      administrative_area_level_1: {
        type: Sequelize.STRING
      },
      administrative_area_level_2: {
        type: Sequelize.STRING
      },
      administrative_area_level_3: {
        type: Sequelize.STRING
      },
      country: {
        type: Sequelize.STRING
      },
      lat: {
        type: Sequelize.DECIMAL(10,6)
      },
      lng: {
        type: Sequelize.DECIMAL(10,6)
      },
      locality: {
        type: Sequelize.STRING
      },
      neighborhood: {
        type: Sequelize.STRING
      },
      location: {
        type: Sequelize.STRING
      },
      postal_code: {
        type: Sequelize.INTEGER
      },
      postal_code_suffix: {
        type: Sequelize.INTEGER
      },
      route: {
        type: Sequelize.STRING
      },
      street_number: {
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