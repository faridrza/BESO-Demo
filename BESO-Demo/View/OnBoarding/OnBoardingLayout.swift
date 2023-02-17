//
//  OnBoardingLayout.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 07.02.23.
//

import UIKit

extension CustomOnboardingCell {
    internal func setLayout(){
        //Add View Components
        contentView.addSubview(gradientBackground)
        contentView.addSubview(onlineTransactionImage)
        contentView.addSubview(label)
        
        //AutoLayout
        NSLayoutConstraint.activate([
            gradientBackground.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.6),
            gradientBackground.widthAnchor.constraint(equalTo:  contentView.widthAnchor),
            gradientBackground.topAnchor.constraint(equalTo:    contentView.topAnchor),
            
            onlineTransactionImage.centerXAnchor.constraint(equalTo: gradientBackground.centerXAnchor),
            onlineTransactionImage.centerYAnchor.constraint(equalTo: gradientBackground.centerYAnchor),
            
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            label.topAnchor.constraint(equalTo: gradientBackground.bottomAnchor, constant: 72),
        ])
    }
}
extension OnBoardingViewController{
    internal func setLayout() {
        //Add button function
        let gesture = UITapGestureRecognizer(target: self, action: #selector(startButtonPressed))
        startButton.addGestureRecognizer(gesture)
        
        //Add View Components
        view.addSubview(myCollectionView)
        view.addSubview(pageIndicator)
        view.addSubview(startButton)
        
        //AutoLayout
        NSLayoutConstraint.activate([
            myCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            myCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            pageIndicator.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            pageIndicator.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -17),
            pageIndicator.widthAnchor.constraint(equalToConstant: 60)
        ])
    }
    internal func setButtonConstraints() {
        self.startButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.startButton.widthAnchor.constraint(equalToConstant: 214).isActive = true
        self.startButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.startButton.bottomAnchor.constraint(equalTo:   self.view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        self.startButton.roundCorners(corners: [.bottomLeft, .topLeft], radius: 6.0)
        
        ///Adding some smooth animation to button
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseOut, animations: {
            self.startButton.backgroundColor = .actionBlue
        })
    }
}
