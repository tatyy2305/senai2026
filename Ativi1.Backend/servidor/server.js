const express = require("express")
const agenda = require("../dados.json")

const mostrarAgenda = (req, res) => {
    calcularIMC()
    res.send(agenda)
}


const novaConsulta = (req, res) => {
    if(req.body){
        res.send("Agendado, em análise")
        agenda.push(req.body)
    }else{
        res.send("Erro ao receber pedido")
    }   
}

const calcularIMC = () => {
    agenda.forEach(p=>{
        p.imc = p.peso / (p.altura * p.altura)
    })
}
const app = express()
app.use(express.urlencoded({extended:true}))
const porta = 3000

app.get("/", mostrarAgenda)
app.post("/", novaConsulta)

app.listen(porta, () => { 
    console.log(`Cliente: http://localhost:5500/cliente/`)
    console.log(`Servidor: http://localhost:${porta}`) 
})