//
//  ViewController.swift
//  04_Ex1_iOS
//
//  Created by MultiLab PRT on 20/07/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //outlet pq sao inputs ou label
    @IBOutlet weak var insNome: UITextField!
    
    @IBOutlet weak var insApelido: UITextField!
    
    //tem de ser action
    @IBAction func botaoConfirmar(_ sender: Any) {
        let nome = insNome.text ?? ""
        let apelido = insApelido.text ?? ""
        
        if (nome != "" && apelido != "") {
            Resultado.text = "Olá \(nome) \(apelido)!"
        } else {
            Resultado.text = "Insira o nome e o apelido."
        }
    }
    @IBOutlet weak var Resultado: UILabel!
}

