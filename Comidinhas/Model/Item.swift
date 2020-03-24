//
//  Item.swift
//  Comidinhas
//
//  Created by Elias Paiva on 24/03/20.
//  Copyright © 2020 Elias Paiva. All rights reserved.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
