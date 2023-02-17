//
//  LoginAsanImzaVC.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 10.02.23.
//

import UIKit
import SkyFloatingLabelTextField

class LoginID : UIViewController {
    
    //MARK: View Components
    @UseAutoLayout internal var headerView = UILoginHeader(frame: .zero, headerTitle: "İstifadəçi ID", headerSubTitle: "İstifadəçi ID ilə daxil ol")

    internal let userNameTextField : SkyFloatingLabelTextField = {
        var view = SkyFloatingLabelTextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "İstifadəçi adı"
        view.selectedTitleColor = UIColor(red: 0.06, green: 0.304, blue: 0.529, alpha: 1)
        view.lineColor = .actionBlue
        view.selectedLineColor = .actionBlue
        return view
    }()
    internal let passwordTextField : SkyFloatingLabelTextField = {
        var view = SkyFloatingLabelTextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Şifrə"
        view.isSecureTextEntry = true
        view.selectedTitleColor = UIColor(red: 0.06, green: 0.304, blue: 0.529, alpha: 1)
        view.lineColor = .actionBlue
        view.selectedLineColor = .actionBlue
        return view
    }()
    internal let logInButton : UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Daxil ol", for: .normal)
        view.backgroundColor = .disabledBlue
        view.layer.cornerRadius = 6
        view.isEnabled = false
        return view
    }()
    internal let signUpButton : UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.setTitle("Qeydiyyatdan Keç", for: .normal)
        view.setTitleColor(.secondaryBlue, for: .normal)
        view.addTarget(nil, action: #selector(signUpButtonPressed), for: .touchUpInside)
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.actionBlue.cgColor
        view.layer.cornerRadius = 6
        return view
    }()
}
