const con = require('../../db.js');

const cadastrar = async ({ nome, id_filme, idioma, qtd}) =>  {
    const [result] = await con.query(
        "INSERT INTO usuarios VALUES (DEFAULT, ?, ?, ?, ?); ", 
        [nome, id_filme, idioma, qtd]
    );

    return {
        id_filmes: result.insertId,
        nome: nome,
        idioma: idioma, 
        qtd: qtd
    };
};

const listar = async (req, res) => {
    const [filmes] = await con.query("SELECT * FROM usuarios;");

    return filmes;
};

const buscar = async (id) => {
    try {
    const [filmes] = await con.query(
        "SELECT * FROM id, nome, email WHERE id_usuario = ?;",
        [0] 
    );

    }catch (err) {
    return filmes[0];
    }
};

const excluir = async (id) => {
    const [result] = await con.query(
        "DELETE FROM usuarios Where id_filmes = ?;", 
        [id]
    );

    return result.affectedRows;
};


const atualizar = (req, res) => {};

const alterar = (req, res) => {};

module.exports = {
    cadastrar,
    listar,
    buscar,
    excluir,
    atualizar,
    alterar
};