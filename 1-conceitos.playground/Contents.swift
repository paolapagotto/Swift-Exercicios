import UIKit


// var = variável
// let = constante em swift


//operadores: == Igual; != Diferente; && And; || Or; ! No


//Conditional IF / ELSE

let qualquerCoisa = 1234

if qualquerCoisa == 123 {
    print("é igual")
} else {
    print("não é igual")
}


//FUNCTIONS


func cumprimentarA (pessoa: String){
    print("Olá, \(pessoa)!")
}
//cumprimentarA(pessoa: "João")


func cumprimentar (a: String){
    print("É, \(a)...")
}
//cumprimentar(a: "João")

func cumprimentarB (_ pessoa: String){
    print("Bom dia, \(pessoa)")
}
//cumprimentarB("João")



func eMenor1(oPrimeiro: Int, oSegundo: Int) -> Bool {
    if oPrimeiro < oSegundo{
        return true
    } else {
        return false
    }
}

func eMenor2(oPrimeiro: Int, oSegundo: Int) -> Bool {
    return oPrimeiro < oSegundo
}

//print(eMenor1 (oPrimeiro: 3, oSegundo: 5))
//print(eMenor1 (oPrimeiro: 7, oSegundo: 5))
//print(eMenor1 (oPrimeiro: 10, oSegundo: 10))

//print(eMenor2 (oPrimeiro: 3, oSegundo: 5))
//print(eMenor2 (oPrimeiro: 7, oSegundo: 5))
//print(eMenor2 (oPrimeiro: 10, oSegundo: 10))


func impareMaiorQueDez(numeroA: Int) -> Bool {
    return numeroA % 2 == 1  && numeroA > 10
}
//print(impareMaiorQueDez(numeroA: 5))
//print(impareMaiorQueDez(numeroA: 11))


//ARRAY


//declarando tipo
//var arrayNomes: [String]

//inicializando array vazio
var arrayVazio = [String]()
var total = arrayVazio.count //.count é uma função nativa no Swift para contar objetos em um array
arrayVazio.append("Paola") //.append é uma função nativa no Swift para dar push em um array

//inicializando array com objetos
var arrayInicializado = ["Game of Thrones", "Breaking Bad", "Vikings"]
var serie1 = arrayInicializado[0]
var serie2 = arrayInicializado[1]

//print(arrayInicializado[2])



//DICTIONARY (dicionário de dados)


//incializando vazio
var dictionary1 = [String: String]()

//declarando tipo
//var dictionary2: [String: String]

//incicializando com objetos
var dictionary3 = ["nome": "Paola", "sobrenome": "Pagotto", "curso": "iOS"]

//print(dictionary3)

var dictionaryX = [String: Int]()
dictionaryX["joão"] = 10
dictionaryX["maria"] = 8
dictionaryX["helena"] = 7
print(dictionaryX)

// LOOP


var listaNomes = [String]()
listaNomes.append("Miguel")
listaNomes.append("Maria")
listaNomes.append("João")
listaNomes.append("Clara")

print(listaNomes)

//While

//Repeat

//For

for index in 0...4 {
    print(index)
}

print("\n --- \n")

let arrayLetters = ["A", "B", "C", "D"]

for letter in arrayLetters {
    print(letter)
}

for i in 0..<arrayLetters.count {
    print("Indice \(i)")
}
