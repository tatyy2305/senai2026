const con = require('../../db.js');

const cadastrar = async ({ nome, cpf, email, senha}) =>  {
    const [result] = await con.query(
        "INSERT INTO usuarios VALUES (DEFAULT, ?, ?, ?, ?); ", 
        [nome, cpf, email, senha]
    );

    return {
        id: result.insertId,
        nome: nome,
        cpf: cpf, 
        email: email
    };
};

const listar = async (req, res) => {
    const [usuarios] = await con.query("SELECT * FROM usuarios;");

    return usuarios;
};

const buscar = async (id) => {
    try {
    const [usuarios] = await con.query(
        "SELECT * FROM id, nome, email WHERE id_usuario = ?;",
        [0] 
    );

    }catch (err) {
    return usuarios[0];
    }
};

const excluir = async (id) => {
    const [result] = await con.query(
        "DELETE FROM usuarios Where id_usuario = ?;", 
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