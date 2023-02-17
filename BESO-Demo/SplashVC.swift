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
        return view
    }()
    internal let vector1 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS1"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    internal let vector2 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS2"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    internal let vector3 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS3"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    internal let vector4 : UIImageView = {
        let view = UIImageView(image: UIImage(named: "SS4"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
