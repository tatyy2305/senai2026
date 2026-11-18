function registrarCadastro(){

    let usuario = document.getElementById("usuario").value
    let senha = document.getElementById("senha").value
    
    

    if (usuario == "login" && senha == "1234") {
        document.getElementById("resultado").textContent = 
        "Login feito com sucesso!!"
        
    }else {
        document.getElementById("resultado").textContent = 
        "Usuario ou senha invalidos, preencha novamente!!";
    }
    
    

    
    
    
}
    
