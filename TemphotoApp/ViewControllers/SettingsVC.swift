//
//  SettingsVC.swift
//  TemphotoApp
//
//  Created by Emre Tekin on 30.05.2022.
//

import UIKit
import Firebase

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func settingsClicked(_ sender: Any) {
        do{
           try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toSigninVC", sender: nil)
        } catch {
            
        }
        
        
    }
    

}
