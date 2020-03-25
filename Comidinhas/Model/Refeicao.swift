//
//  Refeicao.swift
//  Comidinhas
//
//  Created by Elias Paiva on 24/03/20.
//  Copyright © 2020 Elias Paiva. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    let nome : String
    let felicidade : Int
    let itens : [Item] = []
    
    init(nome: String, felicidade: Int) {
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
    
    func toString() -> String {
        return "\(nome): \(totalDeCalorias()) kcal - felicidade= \(felicidade)"
    }
}
