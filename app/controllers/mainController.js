const dataMapper = require("../dataMapper");

const mainController = {
  homePage: async (req, res) => {
    try {
      const pokelist = await dataMapper.getAllPokemons();

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
      const types = await dataMapper.getAllTypes();
      console.log(types);
      res.render('types', {
        types
      });
    } catch (error) {
      console.error(error);
      res.send("Something went wrong");

    }
  },

  detailsPage:async (req, res) => {
    try {
      const pokemon = await dataMapper.getOnePokemon(req.params.id);
      res.render('details', {
        pokemon
      });
    } catch (error) {
      console.error(error);
      res.send("Something went wrong");

    }
  },

  filteredByType : async (req, res) => {
    try {
      const pokelist = await dataMapper.getAllByType(req.params.category);
      
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