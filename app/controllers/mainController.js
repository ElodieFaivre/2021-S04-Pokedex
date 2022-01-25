

const dotenv = require('dotenv');

dotenv.config();

const { Pokemon, Type } = require("../models");

const mainController = {
  homePage: async (req, res) => {
    try {
      const pokelist = await Pokemon.findAll();

      res.render('index', {
        pokelist
      });
    } catch (error) {
      console.error(error);
      res.send("Something went wrong");

    }
  },

  typePage: async (req, res) => {
    try {
      const types = await Type.findAll();
      console.log(types);
      res.render('types', {
        types
      });
    } catch (error) {
      console.error(error);
      res.send("Something went wrong");

    }
  },

  detailsPage: async (req, res) => {
    try {
      const pokemon = await Pokemon.findOne({
        include: ['types'],
        where: {
          numero: req.params.id
        }
      });
      // console.log('ICCIIII')
      // console.log(pokemon.types)
      // for (const type of pokemon.types) {
      //   console.log('ICCII')
      //   console.log(type)
      // }

      res.render('details', {
        pokemon
      });

    } catch (error) {
      console.error(error);
      res.send("Something went wrong");

    }
  },

  filteredByType: async (req, res) => {
    try {
      const pokelistByType = await Type.findAll({
        include: ['pokemons'],
        where: {
          name: req.params.category
        }
      }
      
      )
      console.log(pokelistByType);
      const pokelist = pokelistByType[0].pokemons;

      console.log(pokelist);
      // req.params.category);
      console.log(req.params.category);
      

      res.render('index', {
        pokelist
      });
    } catch (error) {
      console.error(error);
      res.send("Something went wrong");

    }
  },




}

module.exports = mainController;