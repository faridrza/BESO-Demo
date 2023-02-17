//
//  SplashVC.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 09.02.23.
//

import UIKit

class SplashVC: UIViewController {
    
    //MARK: View Components
    internal let background : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SplashScreen"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        return view
    }()
    internal let vector1 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS1"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    internal let vector2 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS2"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    internal let vector3 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS3"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    internal let vector4 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS4"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    internal let logo : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SplashLogo"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    internal let asanButton : UIView = {
        let view = UIView()
        
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .actionBlue
        view.layer.cornerRadius = 6
        
        let image = UIImageView(image: UIImage(named: "fingerPrint"))
        view.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let label = UILabel()
        label.text = "ASAN İmza ilə"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 15).isActive = true
        
        return view
    }()
    internal let idButton : UIView = {
        let view = UIView()
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .actionBlue
        view.layer.cornerRadius = 6
        
        let image = UIImageView(image: UIImage(named: "lock"))
        view.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let label = UILabel()
        label.text = "İstifadəçi ID ilə"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 15).isActive = true
        
        return view
    }()
}

