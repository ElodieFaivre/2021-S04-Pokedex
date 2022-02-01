const Pokemon = require('./pokemon');
const Type = require('./type');

// Pokemon.belongsToMany(Type, {
//     as:"types",
//     through : "pokemon_type", // "via la table de liaison qui s'appelle ..."
//     foreignKey: 'pokemon_numero',
//     otherKey:'type_id', 
// });

Pokemon.belongsToMany(Type, {
    as:"types",
    through : "pokemon_type", // "via la table de liaison qui s'appelle ..."
    sourceKey:"numero",
    otherKey:"type_id"
});

Type.belongsToMany(Pokemon, {
    as:"pokemons",
    through : "pokemon_type", // "via la table de liaison qui s'appelle ..."
    otherKey: 'pokemon_numero',
    foreignKey:'type_id', 
});

// const sequelize = require('../database');
// const init = async()=>{
//     await sequelize.sync({
//          //force: true  // le force oblige la recréation de la BDD et donc supprime les données
//         })
// };

module.exports = { Pokemon, Type }