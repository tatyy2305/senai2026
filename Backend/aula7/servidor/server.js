const express = require("express");
const patrimonio = require("../dados.json");

const mostrarPatrimonio = (req, res) => {
    res.send(patrimonio)
}

const novoPatrimonio = (req, res) => {
    if(req.body){
        res.send("pedido recebido com sucesso!");
        patrimonio.push(req.body)
    }else {
    res.send("erro ao receber!")
    }
}

const excluirPatrimonio = (req, res) => {
    const id = req.params.id;

    patrimonio.forEach((patrimonio, indice) => {
        if (patrimonio.id == id) {
            patrimonio.splice(indice, 1)
        }
    });

    res.send("Patrimonio excluido com sucesso!");
};

const alterarPatrimonio = (req, res) => {
    const id = req.params.id;
    const dados = req.body;

    patrimonio.forEach((patrimonio) => {
        if (patrimonio.id == id) {
            patrimonio.item = dados.item;
            patrimonio.local = dados.local;
            patrimonio.dataRegistro = dados.dataRegistro;
            patrimonio.valor = dados.valor;
            patrimonio.patrimonio = dados.patrimonio;

        }
    });
    res.send("Patrimonio atualizado com sucesso!");
}

const app = express();
app.use(express.json())
app.use(express.urlencoded({ extended: true}))
const porta = 3000;

app.get("/", mostrarPatrimonio);
app.post("/", novoPatrimonio);
app.delete("/:id", excluirPatrimonio);
app.put("/:id", alterarPatrimonio);

app.listen(porta, () => {
    console.log(`Servidor : http://127.0.0.1:${porta}`);
});

