//
//  LoginAsanLayout.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 12.02.23.
//

import UIKit

extension LoginID{
    internal func setLayout() {
        
        view.addSubview(headerView)
        view.addSubview(userNameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(logInButton)
        view.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            headerView.heightAnchor.constraint(equalToConstant: 300),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            userNameTextField.bottomAnchor.constraint(equalTo: view.centerYAnchor),
            userNameTextField.heightAnchor.constraint(equalToConstant: 60),
            
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 10),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            
            logInButton.heightAnchor.constraint(equalToConstant: 56),
            logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            signUpButton.heightAnchor.constraint(equalToConstant: 56),
            signUpButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 16),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
