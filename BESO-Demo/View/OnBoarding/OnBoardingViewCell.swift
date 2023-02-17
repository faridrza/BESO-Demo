//
//  OnBoardingViewCell.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 09.02.23.
//

import UIKit

class CustomOnboardingCell : UICollectionViewCell {
    //shared
    static let identifier = "CustomOnboardingCellIdentifier"
    
    //MARK: View Components
    let gradientBackground : UIImageView = {
        let view = UIImageView(image: UIImage(named: "OnBoardingBackground"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let onlineTransactionImage : UIImageView = {
        let view = UIImageView(image: UIImage(named: "OnBoarding1"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let label : UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.attributedText = NSMutableAttributedString(string: "Sahibkarlar üçün\nsevəcəyiniz həll", attributes: [NSAttributedString.Key.kern: 0.07])
        view.font = .systemFont(ofSize: 24, weight: .regular)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
