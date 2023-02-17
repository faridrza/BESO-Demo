//
//  ViewController.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 07.02.23.
//

import UIKit
import AdvancedPageControl

class OnBoardingViewController: UIViewController{
    
    //MARK: View Components
    internal let myCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.isPagingEnabled = true
        view.isScrollEnabled = true
        view.clipsToBounds = true
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    internal let pageIndicator : AdvancedPageControlView = {
        let view = AdvancedPageControlView()
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfPages = 5
        view.drawer = ExtendedDotDrawer(numberOfPages:3,
                                        height: 8,
                                        width:8,
                                        space:8,
                                        raduis:4,
                                        currentItem:0,
                                        indicatorColor: UIColor(red: 0.121, green: 0.578, blue: 1, alpha: 1),
                                        dotsColor: UIColor(red: 0.64, green: 0.787, blue: 0.992, alpha: 1))
        return view
    }()

    internal let startButton : UIView = {
        let view = UIView()
        view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.clipsToBounds = true
        
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .clear
        text.textColor = .white
        text.frame = CGRect(x: 0, y: 0, width: 72, height: 23)
        text.font = .systemFont(ofSize: 18)
        text.text = "Başlayın"
        
        view.addSubview(text)
        text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let arrow = UIImageView(image: UIImage(named: "rightArrow"))
        arrow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arrow)
        arrow.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        arrow.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -56).isActive = true
        
        return view
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        myCollectionView.register(CustomOnboardingCell.self, forCellWithReuseIdentifier: CustomOnboardingCell.identifier)
        
        setLayout()
    }
}
