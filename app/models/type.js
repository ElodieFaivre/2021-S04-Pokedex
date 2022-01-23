// On récupère sequelize, ainsi que le connecteur
const Sequelize = require('sequelize');
const sequelize = require('../database');


class Type extends Sequelize.Model {};
Type.init({
    name: Sequelize.STRING,
    color : Sequelize.STRING,
   
  },{
    sequelize,
    tableName: "type", // nom de la table
  });

module.exports = Type;