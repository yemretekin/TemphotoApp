//
//  ViewController.swift
//  TemphotoApp
//
//  Created by Emre Tekin on 30.05.2022.
//

import UIKit
import Firebase
import SwiftUI

class SignInVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInClicked(_ sender: Any) {
        if passwordText.text != "" && emailText.text != ""{
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { result, error in
                if error != nil{
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                }else{
                    self.performSegue(withIdentifier: "toHomeVC", sender: nil)
                }
                
            }
            
        }else{
            self.makeAlert(title: "Error", message: "username/password/email ?")
            
        }}
    @IBAction func signUpClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" && emailText.text != ""{
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { [self] auth, error in
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                }else {
                    let firestore = Firestore.firestore()
                    let userDictionary = ["email": self.emailText.text!,"username":usernameText.text!] as [String : Any]
                    firestore.collection("UserInfo").addDocument(data: userDictionary) { error in
                        if error != nil {
                            
                        }
                    }
                    
                    
                    self.performSegue(withIdentifier: "toHomeVC", sender: nil)
                }
            }
            
        }else{
            self.makeAlert(title: "Error", message: "username/password/email ?")
        }
    }
    func makeAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    }


