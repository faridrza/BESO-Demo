//
//  UISignUpHeader.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 14.02.23.
//

import UIKit

class UISignUpHeader : UIView {
    
    @UseAutoLayout fileprivate var header = UILoginHeader(frame: .zero, headerTitle: "Sign Up", headerSubTitle:"", isForSignUp: true)
    
    var headerSubTitle : UILabel = {
        var view = UILabel()
        view.font = .systemFont(ofSize: 16)
        view.textColor = .white
        view.text = "ASAN imza ilə daxil ol"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var indicator = 1
    fileprivate var myStackView : UIStackView = {
        var view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 16
        view.axis = .horizontal
        return view
    }()
    fileprivate var myStack1 : UIStackView = {
        var view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 4
        view.contentMode = .center
        view.axis = .vertical
        return view
    }()
    fileprivate let lineDescription : UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Personal Details"
        view.font = .systemFont(ofSize: 12)
        view.textAlignment = .center
        view.textColor = .white
        return view
    }()
    fileprivate let activeLine : UIImageView = {
        var view = UIImageView(image: UIImage(named: "3Lines"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    fileprivate var myStack2 : UIStackView = {
        var view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 4
        view.axis = .vertical
        return view
    }()
    fileprivate let lineDescription2 : UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "ID Details"
        view.font = .systemFont(ofSize: 12)
        view.textColor = .disabledTextColor
        view.textAlignment = .center
        return view
    }()
    fileprivate let disabledLine2 : UIImageView = {
        var view = UIImageView(image: UIImage(named: "Disabled3Lines"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    fileprivate var myStack3 : UIStackView = {
        var view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 4
        view.axis = .vertical
        return view
    }()
    fileprivate let lineDescription3 : UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Business Details"
        view.font = .systemFont(ofSize: 12)
        view.textColor = .white
        view.textColor = .disabledTextColor
        view.textAlignment = .center
        return view
    }()
    fileprivate var disabledLine3 : UIImageView = {
        var view = UIImageView(image: UIImage(named: "Disabled3Lines"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    init(frame: CGRect ,headerSubtitle: String, indicator: Int=1)  {
        super.init(frame: frame)
        self.headerSubTitle.text = headerSubtitle
        self.indicator = indicator
        switch self.indicator{
        case 2: disabledLine2.image = UIImage(named: "3Lines")
            lineDescription2.textColor = .white
        default:
            print("")
        }
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        addSubview(header)
        myStack1.addArrangedSubview(lineDescription)
        myStack1.addArrangedSubview(activeLine)
        myStack2.addArrangedSubview(lineDescription2)
        myStack2.addArrangedSubview(disabledLine2)
        myStack3.addArrangedSubview(lineDescription3)
        myStack3.addArrangedSubview(disabledLine3)
        myStackView.addArrangedSubview(myStack1)
        myStackView.addArrangedSubview(myStack2)
        myStackView.addArrangedSubview(myStack3)
        addSubview(myStackView)
        addSubview(headerSubTitle)
        
        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalToConstant: 300),
            header.topAnchor.constraint(equalTo: topAnchor),
            header.leadingAnchor.constraint(equalTo: leadingAnchor),
            header.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            myStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -22),
            myStackView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 22),
            myStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),
            
            headerSubTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            headerSubTitle.bottomAnchor.constraint(equalTo: myStackView.topAnchor, constant: -24)
            
            
        ])
    }
}
