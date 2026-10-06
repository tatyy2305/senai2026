const express = require("express")
const router = express.Router()

const Cliente = require("./cliente")
const Pedidos = require("./pedido")

const rotaInicial = (req, res) =>{
    res.json("MVC respondendo")
}

router.get('/', rotaInicial)

router.post('/clientes', Cliente.criar)
router.get('/clientes', Cliente.listar)
router.put('/clientes/:id', Cliente.alterar)
router.delete('/clientes/:id', Cliente.excluir)


router.post('/pedidos', Pedidos.criar)
router.post('/pedidos', Pedidos.listar)
router.post('/pedidos/:id', Pedidos.alterar)
router.post('/pedidos/:id', Pedidos.excluir)

module.exports = router;