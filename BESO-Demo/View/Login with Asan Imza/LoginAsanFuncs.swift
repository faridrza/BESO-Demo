//
//  LoginAsanFuncs.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 12.02.23.
//

import UIKit

extension LoginAsanImza : UITextFieldDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        asanNumberTextField.delegate = self
        asanNumberTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)

        asanIDtextField.delegate = self
        asanIDtextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    
        setLayout()
    }
    
    @objc func textChanged(_ textField: UITextField) {
        if ([asanIDtextField, asanNumberTextField].contains { $0.text!.isEmpty }) {
            logInButton.isEnabled = false
            logInButton.backgroundColor = .disabledBlue
        }
        else{
            logInButton.isEnabled = true
            logInButton.backgroundColor = .actionBlue
        }
    }
}
