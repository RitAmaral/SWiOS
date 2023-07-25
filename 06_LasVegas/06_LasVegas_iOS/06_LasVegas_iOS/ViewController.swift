//
//  ViewController.swift
//  06_LasVegas_iOS
//
//  Created by MultiLab PRT on 24/07/2023.
//

import UIKit



class ViewController: UIViewController {

    
    @IBOutlet weak var firstDice: UIImageView!
    
    
    @IBOutlet weak var secondDice: UIImageView!
    
    let images =
    [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func botaoJogar(_ sender: Any) {
        
        let primeiro = Int.random(in: 0..<images.count)
        let segundo = Int.random(in: 0..<images.count)
        
        firstDice.image = images[primeiro]
        secondDice.image = images[segundo]
        
        if primeiro == segundo {
            let alert = UIAlertController(title: "DOUBLE", message: "Double \(primeiro+1)", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
            self.present(alert, animated: true)
        }
    }
    
}

