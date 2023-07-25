//
//  ProfileViewController.swift
//  05_Ex1_iOS
//
//  Created by MultiLab PRT on 21/07/2023.
//

import UIKit

class ProfileViewController: UIViewController {

    var username = "XXXXX"
    
    @IBOutlet weak var labelUsername: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelUsername.text = "Welcome, \(username)"
    }
    

}
