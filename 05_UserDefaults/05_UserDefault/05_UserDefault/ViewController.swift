//
//  ViewController.swift
//  05_UserDefault
//
//  Created by MultiLab PRT on 20/07/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputUser: UITextField!
    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //isto vai guardar o username
        let savedUsername = UserDefaults.standard.object(forKey: "savedUsername")
        if let username = savedUsername as? String {
            labelResult.text = "Saved name: \(username)"
        }
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        let username = inputUser.text ?? ""
        
        labelResult.text = "Name: \(username)"
        
        //é tipo sharedpreferences, guarda o valor
        UserDefaults.standard.set(username, forKey: "savedUsername")
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        labelResult.text = "No username"
        
        let savedUsername = UserDefaults.standard.object(forKey: "savedUsername")
        if (savedUsername as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "savedUsername")
        }    }
    
}

