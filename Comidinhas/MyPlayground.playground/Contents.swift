import UIKit

//let nome = "churros"
//let felicidade: Int = 5
//let calorias: Double = 79.5
//let vegetal: Bool = false
//
////func alimentoconsumido() {
////    print("O alimento consumido foi: \(nome)")
////}
////
////alimentoconsumido()
////alimentoconsumido()
////
////func alimentoconsumido(nome: String, calorias: Double) {
////    print("O alimento consumido foi: \(nome), com \(calorias) calorias")
////}
////
////alimentoconsumido(nome: nome, calorias: calorias)
//
///*
//    colocando o underLine antes do nome do parâmentro
//    não precia reescrever o nome para chamar o método
//*/
//func alimentoconsumido(_ nome: String, _ calorias: Double) {
//    print("O alimento consumido foi: \(nome), com \(calorias) calorias")
//}
//
//alimentoconsumido(nome, calorias)

//let caloria1 = 50.5
//let caloria2 = 100
//let caloria3 = 300
//let caloria4 = 500
//
//let totalDeCalorias = [50.5, 100, 300, 500]

//for i in 0...3{
//    print("\(i): \(totalDeCalorias[i])")
//}

//for i in 0...totalDeCalorias.count - 1{
//    print("\(i): \(totalDeCalorias[i])")
//}
//for i in totalDeCalorias{
//    print("\(i)")
//}

//func soma(valores:[Double]) -> Double {
//    var soma : Double = 0
//
//    for item in valores {
//        soma += item
//    }
//
//    return soma
//}
//
//print(soma(valores: totalDeCalorias))

class Refeicao {
    var nome : String
    var felicidade : String
    var itens : [Item] = []
    
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }
}

class Item {
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}

var feijao = Item(nome: "Feijão", calorias: 100)
var arroz = Item(nome: "Arroz", calorias: 300)
var ovo = Item(nome: "Ovo", calorias: 10)

var almoco = Refeicao(nome: "Almoço", felicidade: "4")
almoco.itens.append(feijao)
almoco.itens.append(arroz)
almoco.itens.append(ovo)

print(almoco.totalDeCalorias())

