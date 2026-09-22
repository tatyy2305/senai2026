function calcularResultado(){

    let nome = document.getElementById("nome").value;
    let idade = Number(document.getElementById("idade").value)
    let nota1 = Number(document.getElementById("idade").value)
    let nota2 = Number(document.getElementById("idade").value)
    let nota3 = Number(document.getElementById("idade").value)

    let media = (nota1 + nota2 + nota3) / 3

    let situacao;

    if(media>= 7){
        situacao= "Aprovado"
    } else if (media >=5)  {
       situacao = "Recuperacao"
    } else {
        situacao = "Reprovado"
    }


    document.getElementById("resultado").textContent = 
        " |Aluno: " + nome + 
        " |Idade: " + idade +
        " |Media: " + media.toFixed(2) +
        " |situação: " + situacao 
        
}