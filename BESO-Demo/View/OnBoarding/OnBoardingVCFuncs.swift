//
//  OnBoardingViewCellFuncs.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 09.02.23.
//

import UIKit
extension OnBoardingViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate,UICollectionViewDataSource{
    
    //MARK: CollectionView Functions
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: CustomOnboardingCell.identifier, for: indexPath) as! CustomOnboardingCell
        
        //Changing Page Datas for per cellForItem
        switch indexPath.row {
        case 1 : let atr = NSMutableAttributedString(string: "100% mobil\n100% təhlükəsiz\n\n", attributes: [.font : UIFont.boldSystemFont(ofSize: 24)])
            atr.append(NSMutableAttributedString(string: "Telefonunuzda biznesinizin\nmaliyyəsinə tam nəzarət"))
            cell.label.attributedText = NSAttributedString(attributedString: atr)
            cell.onlineTransactionImage.image = UIImage(named: "OnBoarding2")
            
        case 2 : let atr = NSMutableAttributedString(string: "Nəzarət edin", attributes: [.font : UIFont.boldSystemFont(ofSize: 24)])
            atr.append(NSMutableAttributedString(string: "\n\nAsanlıqla invoys yazın,\nproqnozlaşdırın və xərcləri izləyin", attributes: [.font: UIFont.systemFont(ofSize: 18)]))
            cell.label.attributedText = NSAttributedString(attributedString: atr)
            cell.onlineTransactionImage.image = UIImage(named: "OnBoarding3")
            
        default: break
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let offSet = targetContentOffset.pointee.x
        let width = scrollView.frame.width
        
        let index = Int(round(offSet/width))
        pageIndicator.setPage(index)
        
        if CGFloat(offSet/width) >= 1{
            setButtonConstraints()
        }
    }
    
    //MARK: Button Functions
    @objc internal func startButtonPressed(){
        let vc = SplashVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}
