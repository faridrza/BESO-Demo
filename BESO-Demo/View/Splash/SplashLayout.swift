//
//  SplashLayout.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 10.02.23.
//

import UIKit
extension SplashVC{
    internal func setLayout() {
        
        view.addSubview(background)
        view.addSubview(vector1)
        view.addSubview(vector2)
        view.addSubview(vector3)
        view.addSubview(vector4)
        view.addSubview(asanButton)
        view.addSubview(idButton)
        view.addSubview(logo)
        
        NSLayoutConstraint.activate([
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            vector1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vector1.topAnchor.constraint(equalTo: view.topAnchor),
            
            vector2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vector2.topAnchor.constraint(equalTo: view.topAnchor),
            
            vector3.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vector3.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            vector4.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vector4.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            vector4.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            asanButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            asanButton.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -12),
            asanButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            asanButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            asanButton.heightAnchor.constraint(equalToConstant: 56),
            
            idButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 12),
            idButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            idButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            idButton.heightAnchor.constraint(equalToConstant: 56),
            
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.bottomAnchor.constraint(equalTo: asanButton.topAnchor, constant: -70)
        ])
    }
}
