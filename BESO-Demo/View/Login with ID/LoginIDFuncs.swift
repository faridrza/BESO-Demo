//
//  LoginAsanFuncs.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 12.02.23.
//

import UIKit

extension LoginID : UITextFieldDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        userNameTextField.delegate = self
        userNameTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)

        passwordTextField.delegate = self
        passwordTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)

        setLayout()
    }
    
    @objc func textChanged(_ textField: UITextField) {
        if ([userNameTextField, passwordTextField].contains { $0.text!.isEmpty }) {
            logInButton.isEnabled = false
            logInButton.backgroundColor = .disabledBlue
        }
        else{
            logInButton.isEnabled = true
            logInButton.backgroundColor = .actionBlue
        }
    }
    
    @objc func signUpButtonPressed() {
        let vc = SignUp()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}
