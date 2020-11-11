//
//  ViewController.swift
//  Race
//
//  Created by user on 11/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var playerName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func closeAppAction(_ sender: Any) {
        exit(0)
    }
    
    @IBAction func settingAction(_ sender: Any) {
        let alert = UIAlertController(title: "Settings name", message: "Enter player nickname. \n Nickname is now: \(playerName)", preferredStyle: .alert)
        
        self.present(alert, animated: true, completion: nil)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Player name"
        }
        
        let canelAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        
        let addAction = UIAlertAction(title: "Confirm", style: .default) { (action) in
            let name = alert.textFields![0].text
            self.playerName = name
        }
        
        alert.addAction(canelAction)
        alert.addAction(addAction)
    }
    
    
    
}

