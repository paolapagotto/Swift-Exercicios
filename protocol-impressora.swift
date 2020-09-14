import UIKit


//Protocolos em Swift

//Crie um protocolo chamado Imprimível

    //func imprimir() -> Void

//Depois crie as seguintes classes: Contrato, Foto e Documento
    //Contrato: imprima "Sou um contrato muito legal”
    //Foto: imprima "Sou uma selfie"
    //Documento: imprima “Sou um documento do Word”

//Crie uma classe Impressora que contenha uma lista de imprimíveis inicializada sem elementos.
//Depois, crie dois métodos na classe Impressora.


protocol Imprimivel {
    func imprimir()
}

class Contrato:Imprimivel {
    func imprimir(){
        print("Sou um contrato muito legal")
    }
}

class Foto:Imprimivel {
    func imprimir(){
        print("Sou uma selfie")
    }
}

class Documento:Imprimivel {
    func imprimir(){
        print("Sou um documento Word")
    }
}

class Impressora {
    private var arrayImprimiveis = [Imprimivel]()
    
    func imprimirTudo() {
        for item in arrayImprimiveis {
            item.imprimir()
        }
    }
    
    func agregarImprimivel(imprimivel: Imprimivel){
        arrayImprimiveis.append(imprimivel)
    }
}


let impressoraHp = Impressora()
impressoraHp.agregarImprimivel(imprimivel: Contrato())
impressoraHp.agregarImprimivel(imprimivel: Foto())
impressoraHp.agregarImprimivel(imprimivel: Documento())

impressoraHp.imprimirTudo()