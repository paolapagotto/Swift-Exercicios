//DESAFIO aula

class Vendedor {
    var nome:String
    var idade:Int
    var cpf:String
    private var saldo:Float
    
    init(nome:String, idade:Int, cpf:String, saldo:Float){
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldo = saldo
    }
    
    func venderTerno(quantidade:Int, tipo:String){
        if tipo == "terno"{
            if quantidade>=3 {
                setSaldo(saldo:(400 * Float(quantidade)) - (50 * Float(quantidade)))
            } else {
                setSaldo(saldo:(400 * Float(quantidade)))
            }
        }
    }
    
    func venderVestido(quantidade:Int, tipo:String){
        var contadorBrinde: Int = 0
        if tipo == "vestido"{
            for index in 1...quantidade{
                if index % 5 == 0{
                    contadorBrinde = contadorBrinde + 1
                }
            }
            if quantidade >= 5 {
                setSaldo(saldo: Float(900) * Float(quantidade) - (Float(250) * Float(contadorBrinde)))
            } else {
                setSaldo(saldo:(900 * Float(quantidade)))
            }
        }
    }
    
    func venderBone(quantidade:Int, tipo:String) {
        var contadorBrinde: Int = 0
        if tipo == "boné" {
            for index in 1...quantidade{
                if index % 2 == 0 {
                    contadorBrinde = contadorBrinde + 1
                }
                
                if quantidade >= 2 {
                    setSaldo(saldo: Float(50) * Float(quantidade) - (Float(50)*Float(contadorBrinde)))
                } else {
                    setSaldo(saldo: Float(50) * Float(quantidade))
                }
            }
        }
    }
    
    func getSaldo() -> Float{
        return self.saldo
    }
    
    func setSaldo(saldo: Float){
        self.saldo = saldo
    }
    
}


class Produto {
    private var tipo:String
    private var quantidade:Int
    private var preco:Float
    
    init(tipo:String, quantidade:Int, preco:Float){
        self.tipo = tipo
        self.quantidade = quantidade
        self.preco = preco
    }
    
}
let compra1 = Produto(tipo: "vestido", quantidade: 5, preco: 900)
compra1.getSaldo()
