//
//  LoginVC.swift
//  breakpoint
//
//  Created by iosdev on 29.3.2018.
//  Copyright © 2018 HuyTrinh. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passworField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInBtnWasPressed(_ sender: Any) {
        if emailField.text != nil &&
            passworField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passworField.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                    print("Login successfully")
                } else {
                    print(String(describing: loginError?.localizedDescription))
                    AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passworField.text!, userCreationComplete: { (success, error) in
                        if success {
                            self.dismiss(animated: true, completion: nil)
                            print("register successfully")
                        } else {
                            print(String(describing: loginError?.localizedDescription))
                        }
                    })
                }
            })
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension LoginVC: UITextFieldDelegate {
    
}
