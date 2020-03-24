//
//  ViewController.swift
//  Comidinhas
//
//  Created by Elias Paiva on 24/03/20.
//  Copyright © 2020 Elias Paiva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var campoNome: UITextField?
    @IBOutlet weak var campoFelicidade: UITextField?
    
    
    @IBAction func adicionar(_ sender: Any) {
        guard let campoNomeText = campoNome?.text else { return }
        guard let campoFelicidadeText = campoFelicidade?.text, let felicidadeInt = Int(campoFelicidadeText) else { return }
        
        let refeicao = Refeicao(nome: campoNomeText, felicidade: felicidadeInt)
        
        print(refeicao.toString())
    }
}
