class Pizza {
    private static let PRECO_INICIAL: Double = 25.00
    private static let INGREDIENTES_MAX: Int = 8
    private static let PRECO_POR_INGREDIENTES: Double = 4.00
    private static let DESCRICAO_PIZZA : String = "queijo com calabreza"
    private var qtd_ingredientes : Int = 0;
    
    init(){
        qtd_ingredientes = 0;
    }
    
    init(quantidadeInicial: Int){
        adicionarIngredientes(quantidade: quantidadeInicial);
    }
    
    func adicionarIngredientes(){
        adicionarIngredientes(quantidade: 1);
    }
    
    func adicionarIngredientes(quantidade: Int){
        if(quantidade > 0 && quantidade < Pizza.INGREDIENTES_MAX && qtd_ingredientes < Pizza.INGREDIENTES_MAX){
            for _ in 0..<quantidade {
                qtd_ingredientes+=1;
            }
        }
        else{
            print("Quantidade inválida! Ingredientes zerados, insira novamente.")
            qtd_ingredientes = 0;
        }
    }
    
    func removerIngredientes(){
        removerIngredientes(quantidade: 1);
    }
    
    func removerIngredientes(quantidade : Int){
         if(quantidade > 0 && quantidade < Pizza.INGREDIENTES_MAX){
            for _ in 0..<quantidade {
                qtd_ingredientes-=1;
            }
        }
        else if(quantidade > Pizza.INGREDIENTES_MAX){
            qtd_ingredientes = 0; 
        }
        else{
            print("Quantidade inválida, tente remover novamente!")
        }
    }
    
    func somarTotal() -> Double{
        return (Pizza.PRECO_INICIAL + (Double(qtd_ingredientes) * Pizza.PRECO_POR_INGREDIENTES));
    }
    
    func getIngredientes() -> Int{
        return qtd_ingredientes;
    }
    
    func gerarNota() -> String{
        var nota : String
        nota = "Sua pizza \(Pizza.DESCRICAO_PIZZA) com \(getIngredientes()) ingredientes, ficou  \(somarTotal())"; 
        return nota;
    }
}
