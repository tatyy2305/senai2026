const con = requires('../config/db.js');

const cadastrar = async (req, res) =>  {
    const { nome, cpf, email, senha} = req.body;

    const [result] = await con.query(
        "NSERT INTO usuarios VALUES (DEFAULT, ?, ?, ?, ?); ", 
        [nome, cpf, email, senha]
    );

    return {
        id: result.insertId,
        nome: nome,
        cpf: cpf, 
        email: email
    };
};

const listar = (req, res) => {};

const buscar = (req, res) => {};

const excluir = (req, res) => {};

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