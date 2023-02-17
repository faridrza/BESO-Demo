//
//  UILoginHeader.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 13.02.23.
//

import UIKit

class UILoginHeader: UIView {
    
    fileprivate var titleBottomAnchorCount = CGFloat()
    
    fileprivate let headerImage : UIImageView = {
        var view = UIImageView(image: UIImage(named: "blueHeader"))
        view.frame = CGRect(x: 0, y: 0, width: .zero, height: 300)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    fileprivate let vector1 : UIImageView = {
        var view = UIImageView(image: UIImage(named: "splashLine1"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    fileprivate let vector2 : UIImageView = {
        var view = UIImageView(image: UIImage(named: "splashLine2"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    fileprivate let headerTitle : UILabel = {
        var view = UILabel()
        view.font = .boldSystemFont(ofSize: 24)
        view.textColor = .white
        view.text = "ASAN imza"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    fileprivate let headerSubTitle : UILabel = {
        var view = UILabel()
        view.font = .systemFont(ofSize: 16)
        view.textColor = .white
        view.text = "ASAN imza ilə daxil ol"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init(frame: CGRect, headerTitle: String, headerSubTitle: String, isForSignUp : Bool = false)  {
        super.init(frame: frame)
        self.headerTitle.text = headerTitle
        self.headerSubTitle.text = headerSubTitle
        self.titleBottomAnchorCount = (isForSignUp == true) ? -96 : -62
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        addSubview(headerImage)
        addSubview(vector1)
        addSubview(vector2)
        addSubview(headerTitle)
        addSubview(headerSubTitle)
        
        NSLayoutConstraint.activate([
            headerImage.heightAnchor.constraint(equalToConstant: 300),
            headerImage.topAnchor.constraint(equalTo: topAnchor),
            headerImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            vector1.topAnchor.constraint(equalTo: topAnchor),
            vector1.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            vector2.topAnchor.constraint(equalTo: topAnchor),
            vector2.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            headerTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            headerTitle.bottomAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: titleBottomAnchorCount),
            
            headerSubTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            headerSubTitle.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 5)
        ])
    }
}
