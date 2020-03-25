//
//  TableViewController.swift
//  Comidinhas
//
//  Created by Elias Paiva on 25/03/20.
//  Copyright © 2020 Elias Paiva. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var comidas = [
                    Refeicao(nome: "Coxinha", felicidade: 5),
                    Refeicao(nome: "Arroz", felicidade: 5),
                    Refeicao(nome: "Feijão", felicidade: 5),
                    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comidas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        celula.textLabel?.text = comidas[indexPath.row].toString()
        
        return celula
    }
    
    func add(_ refeicao: Refeicao) {
        comidas.append(refeicao)
        
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adicionar"{
            if let viewController = segue.destination as? ViewController {
                viewController.tabelaView = self
            }
        }
    }
}
