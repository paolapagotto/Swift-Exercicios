import UIKit

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String){
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func getSalarioAnual() -> Double {
        return salario * 12
    }

}


class Programador: Funcionario {
    var plataforma: String
    var bonus: Double
    
    
    init(nome: String, salario: Double, cpf: String, plataforma: String, bonus: Double){
        self.plataforma = plataforma
        self.bonus = bonus
        super.init(nome: nome, salario: salario, cpf: cpf)
        
    }
    
    
    override func getSalarioAnual() -> Double {
        let salarioAnual = super.getSalarioAnual()
        let bonusAnual = super.getSalarioAnual() * 0.20
        return salarioAnual + bonusAnual
    }
}


class Designer: Funcionario {
    var ferramentaPreferida: String
    var bonus: Double
    
    init(nome: String, salario: Double, cpf: String, ferramentaPreferida: String, bonus: Double){
        self.ferramentaPreferida = ferramentaPreferida
        self.bonus = bonus
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func getSalarioAnual() -> Double {
        let salarioAnual = super.getSalarioAnual()
        let bonusAnual = super.getSalarioAnual() * 0.15
        return salarioAnual + bonusAnual
    }
    
}


