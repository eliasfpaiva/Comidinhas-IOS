//
//  ViewController.swift
//  Comidinhas
//
//  Created by Elias Paiva on 24/03/20.
//  Copyright © 2020 Elias Paiva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var campoNome: UITextField!
    @IBOutlet weak var campoFelicidade: UITextField!
    
    
    @IBAction func adicionar(_ sender: Any) {
        print("Comi \(campoNome.text) e fiquei \(campoFelicidade.text)")
    }
}
