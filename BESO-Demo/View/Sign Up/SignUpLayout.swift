//
//  SignUpLayout.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 14.02.23.
//

import UIKit

extension SignUp{
    internal func setLayout() {
        
        view.addSubview(header)
        view.addSubview(firstTextField)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalToConstant: 300),
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor),
            
            firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            firstTextField.bottomAnchor.constraint(equalTo: view.centerYAnchor),
            firstTextField.heightAnchor.constraint(equalToConstant: 60),
            
            nextButton.heightAnchor.constraint(equalToConstant: 56),
            nextButton.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 24),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    internal func setOnlyHeaderLayout() {
        
        view.addSubview(header)
        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalToConstant: 300),
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor),
        ])
    }
}
