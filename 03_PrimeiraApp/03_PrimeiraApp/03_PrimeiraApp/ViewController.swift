//
//  ViewController.swift
//  03_PrimeiraApp
//
//  Created by MultiLab PRT on 17/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeClicked(_ sender: Any) {
        let i = Int.random(in: 1...4)
        var img: UIImage?
        
        switch i {
            case 1: img = UIImage(named: "dog1")
            case 2: img = UIImage(named: "lion")
            case 3: img = UIImage(named: "tiger1")
            case 4: img = UIImage(named: "cat1")
        default: print("Ola")
        }
        
        if let entre1e4 = img {
            imagem.image = entre1e4
        }
        //podia fazer apenas if i == 1 {imagem.image == UIIimage(named: "dog1")
        
    }
    
    @IBAction func imDog(_ sender: Any) {
        imagem.image = UIImage(named: "dog1")
    }
    
    @IBAction func imLion(_ sender: Any) {
        imagem.image = UIImage(named: "lion")
    }
    
    @IBAction func imTiger(_ sender: Any) {
        imagem.image = UIImage(named: "tiger1")
    }
    
    @IBAction func imCat(_ sender: Any) {
        imagem.image = UIImage(named: "cat1")
    }
}

