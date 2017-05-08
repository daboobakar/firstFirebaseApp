//
//  LoginViewController.swift
//  firstFirebaseApp
//
//  Created by Danyal Aboobakar on 05/05/2017.
//  Copyright © 2017 Danyal Aboobakar. All rights reserved.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: customTextfield!
    @IBOutlet weak var passwordTextField: customTextfield!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        SVProgressHUD.show(withStatus: "Signing in..")
        if let email = emailTextField.text, let password = passwordTextField.text {
        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
            if  let firebaseError = error {
                print(firebaseError.localizedDescription)
                SVProgressHUD.showError(withStatus: "Sign in failed")
                SVProgressHUD.dismiss(withDelay: 2)
                return
            } else {
                print("Success!")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "showProfile", sender: nil)
            }
            
        })
        }
    }

}
