//
//  ViewController.swift
//  Comidinhas
//
//  Created by Elias Paiva on 24/03/20.
//  Copyright © 2020 Elias Paiva. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Atributos
    var delegate: AdicionaRefeicaoDelegate?
    var itens : [Item] = [Item(nome: "Macarrão", calorias: 200),
                            Item(nome: "Tomate", calorias: 20),
                            Item(nome: "Alho", calorias: 2),
                            Item(nome: "Cebola", calorias: 25),]
    var itensSelecionados: [Item] = []
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        celula.textLabel?.text = itens[indexPath.row].nome
        
        return celula
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else { return }
        if celula.accessoryType == .none{
            celula.accessoryType = .checkmark
            itensSelecionados.append(itens[indexPath.row])
        }else{
            celula.accessoryType = .none
            
            let item = itens[indexPath.row]
            if let posicao = itensSelecionados.firstIndex(of: item){
                itensSelecionados.remove(at: posicao)
            }
            for i in itensSelecionados{
                print(i.nome)
            }
        }
    }
    
    // MARK: - IBOutlets
    @IBOutlet weak var campoNome: UITextField?
    @IBOutlet weak var campoFelicidade: UITextField?
    
    // MARK: - IBActions
    
    @IBAction func adicionar(_ sender: Any) {
        guard let campoNomeText = campoNome?.text else { return }
        guard let campoFelicidadeText = campoFelicidade?.text, let felicidadeInt = Int(campoFelicidadeText) else { return }
        
        let refeicao = Refeicao(nome: campoNomeText, felicidade: felicidadeInt, itens: itensSelecionados)
        
        delegate?.add(refeicao)
    
        navigationController?.popViewController(animated: true)
    }
}
