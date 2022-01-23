const Pokemon = require('./pokemon');
const Type = require('./type');

Pokemon.belongsToMany(Type, {
    as:"types",
    through : "pokemon_type", // "via la table de liaison qui s'appelle ..."
    foreignKey: 'pokemon_numero',
    otherKey:'type_id',
    uniqueKey:'id'
});

Type.belongsToMany(Pokemon, {
    as:"pokemons",
    through : "pokemon_type", // "via la table de liaison qui s'appelle ..."
    otherKey: 'pokemon_numero',
    foreignKey:'type_id',
    uniqueKey:'id'
});

module.exports = { Pokemon, Type}