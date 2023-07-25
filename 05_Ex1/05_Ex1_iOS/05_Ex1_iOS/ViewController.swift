//
//  ViewController.swift
//  05_Ex1_iOS
//
//  Created by MultiLab PRT on 20/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputUser: UITextField!
    
    @IBOutlet weak var inputPass: UITextField!
    
    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedUsername = UserDefaults.standard.object(forKey: "savedUsername") as? String
        if let username = savedUsername as? String {
            inputUser.text = username
        }
        let savedPassword = UserDefaults.standard.object(forKey: "savedPassword") as? String
        if let password = savedPassword as? String {
            inputPass.text = password
        }
        
    }
    //transporta o user para a outra view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toProfileVC" {
            //print("AQUI")
            let destinationVC = segue.destination as! ProfileViewController
            destinationVC.username = inputUser.text ?? ""
        }
    }
    
    //sempre que clico em login:
    @IBAction func btnLogin(_ sender: Any) {
        let username = inputUser.text ?? ""
        let password = inputPass.text ?? ""
            

        if (username == "user" || username == "admin" && password == "pass") {
            labelResult.text = "Login OK"
            
            //USER DEFAULTS - gravaçao
            UserDefaults.standard.set(username, forKey: "savedUsername")
            UserDefaults.standard.set(password, forKey: "savedPassword")
            
            //SEGUE - permiste passar para a outra activity
            performSegue(withIdentifier: "toProfileVC", sender: nil)
        }
        else {
            labelResult.text = "Login incorreto"
            
            //pop-up:
            let alert = UIAlertController(title: "Alert", message: "Login Inválido", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)) //pode ser default, cancel (fica o ok a negrito), e destructive (fica o ok vermelho)
            
            //informar o que quero mostrar, e com animaçao
            self.present(alert, animated: true, completion: nil)
            
            //User Defaults - eliminaçao
            let savedUsername = UserDefaults.standard.object(forKey: "savedUsername")
                if (savedUsername as? String) != nil {
                    UserDefaults.standard.removeObject(forKey: "savedUsername")
                }
            }
        //limpar campos qnd login seja ok ou errado
        inputUser.text = ""
        inputPass.text = ""
        }
    }
    

