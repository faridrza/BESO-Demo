//
//  LoginAsanLayout.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 12.02.23.
//

import UIKit

extension LoginAsanImza{
    internal func setLayout() {
        
        view.addSubview(headerView)
        view.addSubview(asanNumberTextField)
        view.addSubview(asanIDtextField)
        view.addSubview(logInButton)
        view.addSubview(stackView)
        stackView.addArrangedSubview(asanFingerPrintLogo)
        stackView.addArrangedSubview(footerText)
        
        NSLayoutConstraint.activate([
            headerView.heightAnchor.constraint(equalToConstant: 300),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            
            asanNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            asanNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            asanNumberTextField.bottomAnchor.constraint(equalTo: view.centerYAnchor),
            asanNumberTextField.heightAnchor.constraint(equalToConstant: 60),
            
            asanIDtextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            asanIDtextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            asanIDtextField.topAnchor.constraint(equalTo: asanNumberTextField.bottomAnchor, constant: 10),
            asanIDtextField.heightAnchor.constraint(equalToConstant: 60),
            
            logInButton.heightAnchor.constraint(equalToConstant: 56),
            logInButton.topAnchor.constraint(equalTo: asanIDtextField.bottomAnchor, constant: 24),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -36),
            
        ])
    }
}
