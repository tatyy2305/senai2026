const vendas = {
    segunda: 150,
    terça: 200,
    quarta: 100,
    quinta: 300,
    sexta: 250
};

const chaves = Object.keys(vendas)
let total = 0;

for(let i = 0; i < chaves.length; i++){
    total = total + vendas[chaves[i]]
} 

console.log("Totas das vendas: " + total)