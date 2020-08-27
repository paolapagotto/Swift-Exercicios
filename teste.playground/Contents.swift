import UIKit

var totalBolas: Int = 10;
var bolasPerdidas: Int = 2;

var totalRestantes: Int = totalBolas - bolasPerdidas;

    //print("Restam: \n \(totalRestantes) bolas");

bolasPerdidas = 0;
totalRestantes = totalBolas - bolasPerdidas;

    //print("Restam: \(totalRestantes) bolas");

var bolasGanhas: Int = 5;
totalRestantes = totalBolas - bolasPerdidas + bolasGanhas;

    //print("Restam: \(totalRestantes) bolas");


//O índice é calculado da seguinte maneira: divide-se o peso do paciente pela sua altura elevada ao quadrado. Diz-se que o indivíduo tem peso normal quando o resultado do IMC está entre 18,5 e 24,9.

var peso: Float = 50.0;
var altura: Float = 1.57;

var resultadoIMC: Float = peso/pow(altura,2);

if(resultadoIMC > 18.5 && resultadoIMC < 25){
    print("O IMC calculado é \(resultadoIMC), considerado NORMAL.");
}

//Concatenação

var nome: String = "Paola";
var sobrenome: String = "Pagotto";

var cartaoVisitaBr: String = nome + " " + sobrenome;
    print(cartaoVisitaBr);

var cartaoVisitaUs: String = sobrenome + ", " + nome;
    print(cartaoVisitaUs);

print("\(sobrenome), \(nome)");
print("\(nome) \(sobrenome)");

var cartaoVisita: String = "\(nome) \(sobrenome)";
print(cartaoVisita);


//CMD + R = Rodar o Emulador, CMD + B = Fazer build, Shift + Control + Command + W = Fechar projeto, Control + I = Formatar código
