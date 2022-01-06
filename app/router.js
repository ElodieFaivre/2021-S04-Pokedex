const express = require("express");
const mainController = require("./controllers/mainController");

const router = express.Router();


router.get("/", mainController.homePage);

router.get("/types", mainController.typePage);

router.get("/types/:category", mainController.filteredByType);
//     const pokelistJson = require('./data/pokedex.json');
//     console.log(req.params.category);
    
//     const pokelist = pokelistJson.filter(
//         pokemon=> {
//             const pokeSome = pokemon.type.some(type => type.toLowerCase() == req.params.category.toLowerCase())
//             console.log(pokeSome);
//             return pokeSome;
//         });
        
//     const data = {
//         pokelist
//     };

//     res.render("index", data)

// });

router.get("/pokemon/:id", mainController.detailsPage);

router.get("/game", (req,res)=> {
    const pokelist = require('./data/pokedex.json');
    const isWinner =false;
    const tempt=0;
    const randomNb= Math.ceil(Math.random()*pokelist.length);
    const pokemon=pokelist.find(pokemon=> pokemon.numero == randomNb)
    const data = {
        pokemon,
        isWinner,
        tempt,
        
    };
    res.render("game", data)
});

router.post("/game", (req,res)=> {
    const isWinner= false;    
    const pokelist = require('./data/pokedex.json');
    const pokemon=pokelist.find(pokemon=> pokemon.nom ===req.body.nameToGuess);
    const tempt = req.body.tempt;
    if(req.body.nameToGuess.toLowerCase()===req.body.name.toLowerCase())
    {   
        
        const data = {
            pokemon,
            isWinner:true,
            tempt
        }
        res.render("game", data);
    }
    else {
        const data = {
            pokemon,
            isWinner:false,
           tempt: parseInt(tempt)+1,
        }
        res.render("game", data);
    } 
   

})

module.exports = router;