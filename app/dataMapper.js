const client = require('./database');

const dataMapper = {
    getAllPokemons : async ()=> {
        const sql = `SELECT * FROM pokemon`;
        return (await client.query(sql)).rows;
    },
    getOnePokemon : async (id)=> {
        const sql = `SELECT * FROM pokemon WHERE numero=${Number(id)}`;
        const result = (await client.query(sql)).rows[0];
        const sql2 = `SELECT t.name  FROM type t JOIN pokemon_type pt ON pt.type_id=t.id WHERE pokemon_numero=${Number(id)}`;
        const result_types = (await client.query(sql2)).rows;
        //console.log(result_types);
        let types=[];
        for(const type of result_types){
             types.push(type.name);
        }
             
        result.types=types;
        console.log(result);
        return result;
       
    },

    getAllTypes : async()=> {
        sql=`SELECT * FROM type`;
        return (await client.query(sql)).rows;
    },

    getAllByType : async (typeName)=> {
        const sql = `SELECT pt.pokemon_numero FROM pokemon_type pt JOIN type t ON pt.type_id=t.id WHERE t.name ILIKE '${typeName}'`;
        const nbResults = (await client.query(sql)).rows;
        let nbToSearch='';
        for(nb of nbResults){
            nbToSearch+=`${nb.pokemon_numero} OR numero=`;
        }
        const sql2 = `SELECT * FROM pokemon WHERE numero=${nbToSearch}0`;
        const result = (await client.query(sql2)).rows;
        return result
    },

}

module.exports = dataMapper;