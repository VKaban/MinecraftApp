//
//  ViewController.swift
//  MinecraftApp
//
//  Created by  Vital Milky on 10/13/18.
//  Copyright © 2018  Vital Milky. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func handleLogout(){
        let loginController = LoginController()
        present(loginController, animated: true, completion:  nil)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

