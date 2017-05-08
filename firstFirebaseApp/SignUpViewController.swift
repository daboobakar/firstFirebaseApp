//
//  SignUpViewController.swift
//  firstFirebaseApp
//
//  Created by Danyal Aboobakar on 05/05/2017.
//  Copyright © 2017 Danyal Aboobakar. All rights reserved.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var signupUsernameTextField: customTextfield!
    @IBOutlet weak var signupEmailTextField: customTextfield!
    @IBOutlet weak var signupPasswordTextField: customTextfield!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func signupButtonTapped(_ sender: Any) {
        SVProgressHUD.show(withStatus: "Creating account..")
        if let email = signupEmailTextField.text, let password = signupPasswordTextField.text {
            FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
                if  let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    SVProgressHUD.showError(withStatus: "Sign up failed")
                    SVProgressHUD.dismiss(withDelay: 2)
                    return
                }
                print("Success!")
                SVProgressHUD.showInfo(withStatus: "Account created!")
                SVProgressHUD.dismiss(withDelay: 5)
                self.signupEmailTextField.text = ""
                self.signupPasswordTextField.text = ""
            })
        }
        
    }
    
}
