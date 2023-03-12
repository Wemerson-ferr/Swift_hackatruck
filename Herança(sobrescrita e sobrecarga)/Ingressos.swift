class Ingresso {
    var valor: Double
    var tipo: String
    
    init(valor: Double, tipo: String) {
        self.valor = valor
        self.tipo = tipo
    }
    
    init(valor: Double) {//Esses inits podem demonstrar a sobrecarga, pois têm parâmetros diferentes.
        self.valor = valor
        self.tipo = "Tradicional"
    }
    
    func toString() -> String {
        return "Esse ingresso \(self.tipo) custa R$\(self.valor)"
    }
}

class IngressoVip: Ingresso {
    static let valorAdicional: Double = 75.99
    
    override func toString() -> String {
        return "Esse ingresso VIP, tem um adicional de R$\(IngressoVip.valorAdicional), então o total é R$\(calculaTotal())"
    }
    
    func calculaTotal() -> Double {
        return valor + IngressoVip.valorAdicional
    }
    
    override init(valor: Double, tipo: String) {//Já aqui temos uma sobrescrita, pois modifica o método da classe mãe
        super.init(valor: valor, tipo: tipo + " VIP")
    }
    
    override convenience init(valor: Double) {
        self.init(valor: valor, tipo: "Tradicional")
    }
}
