//
//  SplashFuncs.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 10.02.23.
//

import UIKit
extension SplashVC{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let gestureForASAN = UITapGestureRecognizer(target: self, action: #selector(asanImzaButtonPressed))
        asanButton.addGestureRecognizer(gestureForASAN)
        let gestureForID = UITapGestureRecognizer(target: self, action: #selector(loginWithIdButtonPressed))
        idButton.addGestureRecognizer(gestureForID)
        
        setLayout()
    }
    
    @objc internal func asanImzaButtonPressed(){
        let vc = LoginAsanImza()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @objc internal func loginWithIdButtonPressed(){
        let vc = LoginID()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}
