const usuario = require("../models/usuario_models");

const cadastrar = async (req, res) => {
    try {
        //const {nome, cpf, email, senha} = req.boy;

        let retorno = await usuario.cadastrar(req.body);

        res.json(retorno).status(201).end()
    }catch (err) {
        res.json({ erro: err.message}).status(500).end();
    }
};

const listar = async (req, res) => {
    try{
        const usuarios = await usuario.listar();

        res.status(200).json(usuarios).end();
    }catch (err) {
        res.status(500).json({ erro: err.message}).end();
    }
};

const buscar = async (req, res) => {
    try{
        const id = req.params.id;

        const info = await usuario.buscar(id);

        if(info.length == 0) {
            res.status(404).json({info: "Usuario não encontrado"}).end();
        }else {
            delete info[0]

            res.status(200).json(info[0]).end();
        }
    }catch (err) {
    res.status(500).json({erro: err.message}).end();
    }   
};

const excluir = async (req, res) => {
    try{
        const id = req.params.id;

        const numLinha = await usuario.excluir(id);

        if(numLinha == 0) {
            res.status(404).json({info: "Não foi possivel excluir o usuario"}).end();
        }else {
            res.status(203).json({info: "Usuario excluido com sucesso !"}).end();
        }
    }catch (err) {
        res.status(500).json({erro: err.message}).end();
    }
};

module.exports = {
    cadastrar,
    listar,
    buscar,
    excluir
};