//
//  LoginAsanImzaVC.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 10.02.23.
//

import UIKit
import SkyFloatingLabelTextField

class LoginAsanImza : UIViewController {
    
    //MARK: View Components
    @UseAutoLayout internal var headerView = UILoginHeader(frame: .zero, headerTitle: "ASAN imza", headerSubTitle: "ASAN imza ilə daxil ol")
    
    internal let asanNumberTextField : SkyFloatingLabelTextField = {
        var view = SkyFloatingLabelTextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "ASAN İmza mobil nömrə ilə"
        view.selectedTitleColor = .secondaryBlue
        view.lineColor = .actionBlue
        view.selectedLineColor = .actionBlue
        return view
    }()
    internal let asanIDtextField : SkyFloatingLabelTextField = {
        var view = SkyFloatingLabelTextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "ASAN İmza istifadəçi ID"
        view.selectedTitleColor = .secondaryBlue
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
    internal let stackView : UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 16
        return view
    }()
    internal let asanFingerPrintLogo : UIImageView = {
        let view = UIImageView(image: UIImage(named: "fingerPrint2"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        return view
    }()
    internal let footerText : UILabel = {
        let view = UILabel()
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue,
                                  NSAttributedString.Key.underlineColor: UIColor.actionBlue]
        let underlineAttributedString = NSAttributedString(string: "Asan İmza necə əldə etmək olar ?", attributes: underlineAttribute)
        view.attributedText = underlineAttributedString
        view.font = .systemFont(ofSize: 16)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
}
