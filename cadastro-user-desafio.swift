//
//  ViewController.swift
//  cadastro-user
//
//  Created by Paola Pagotto on 14/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit



class User {
    var email:String
    var password:String
    init(email:String, password:String) {
        self.email = email
        self.password = password
    }
    
    private func newUser(email: String) -> Bool {
        if self.email == email{
            print("This user already exists")
            return false
        }
        return true
    }
}


class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var buttonSignUpUI: UIButton!
    
    @IBAction func buttonSignUp(_ sender: UIButton, forEvent event: UIEvent) {
        if validateInfo() {
            buttonSignUpUI.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
        buttonSignUpUI.isEnabled = false
    }
    
    private func validateInfo() -> Bool {
        if textFieldEmail.text == nil || textFieldEmail.text!.isEmpty {
            print("Email is required!")
            return false
        }
        if textFieldPassword.text == nil || textFieldPassword.text!.isEmpty {
            print("Password is required!")
            return false
        }
        print("User signed up successfully")
        buttonSignUpUI.isEnabled = true
        return true
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldEmail {
            textFieldPassword.becomeFirstResponder()
        } else {
            if validateInfo() {
                textField.resignFirstResponder()
            }
        }
        return true
    }
}


