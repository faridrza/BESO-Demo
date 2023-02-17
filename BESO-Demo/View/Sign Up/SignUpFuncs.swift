//
//  SignUpFuncs.swift
//  BESO-Demo
//
//  Created by Farid Rzayev on 14.02.23.
//

import UIKit
extension SignUp : UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        countries.delegate = self
        countries.dataSource = self
        
        firstTextField.delegate = self
        firstTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
        
        setLayout()
    }
    
    @objc internal func textChanged(_ textField: UITextField) {
        if firstTextField.text!.isEmpty {
            nextButton.isEnabled = false
            nextButton.backgroundColor = .disabledBlue
        }
        else{
            nextButton.isEnabled = true
            nextButton.backgroundColor = .actionBlue
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return countryList.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return countryList[row] // Title of the row
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        }
    @objc internal func nextButtonPressed(){
        switch GlobalProperties.signUpPageCount {
        case 1 :
            GlobalProperties.signUpUserName = firstTextField.text ?? ""
            GlobalProperties.signUpPageCount = 2
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            self.firstTextField.placeholder = "Lastname"
            self.firstTextField.text = ""
            header.headerSubTitle.text = "What’s your last name, \(GlobalProperties.signUpUserName)?"

            return
        case 2 :
            GlobalProperties.signUpPageCount = 3
            header.headerSubTitle.text = "When were you born, \(GlobalProperties.signUpUserName)?"
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(dateTime)
            view.addSubview(nextButton)
            NSLayoutConstraint.activate([
                dateTime.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                dateTime.bottomAnchor.constraint(equalTo: view.centerYAnchor),
                dateTime.heightAnchor.constraint(equalToConstant: 60),
                
                nextButton.heightAnchor.constraint(equalToConstant: 56),
                nextButton.topAnchor.constraint(equalTo: dateTime.bottomAnchor, constant: 24),
                nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ])
            setOnlyHeaderLayout()
            return
        case 3 :
            GlobalProperties.signUpPageCount = 4
            firstTextField.text = ""
            header.headerSubTitle.text = "What’s your email address?"
            firstTextField.placeholder = "Email"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 4 :
            GlobalProperties.signUpPageCount = 5
            header.headerSubTitle.text = "In which county do you live?"
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(countries)
            view.addSubview(nextButton)
            NSLayoutConstraint.activate([
                countries.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                countries.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                countries.heightAnchor.constraint(equalToConstant: 140),
                
                nextButton.heightAnchor.constraint(equalToConstant: 56),
                nextButton.topAnchor.constraint(equalTo: countries.bottomAnchor, constant: 24),
                nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ])
            setOnlyHeaderLayout()
            return
        case 5 :
            GlobalProperties.signUpPageCount = 6
            header.headerSubTitle.text = "Where should we send your card?"
            firstTextField.text = ""
            firstTextField.placeholder = "Street name"
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            countries.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(secondTextField)
            view.addSubview(nextButton)
            view.addSubview(locationButton)
            NSLayoutConstraint.activate([
                firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
                firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
                firstTextField.bottomAnchor.constraint(equalTo: view.centerYAnchor),
                firstTextField.heightAnchor.constraint(equalToConstant: 60),
                
                secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
                secondTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
                secondTextField.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 16),
                secondTextField.heightAnchor.constraint(equalToConstant: 60),
                
                locationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
                locationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
                locationButton.topAnchor.constraint(equalTo: secondTextField.bottomAnchor, constant: 16),
                locationButton.heightAnchor.constraint(equalToConstant: 60),
                
                nextButton.heightAnchor.constraint(equalToConstant: 56),
                nextButton.topAnchor.constraint(equalTo: locationButton.bottomAnchor, constant: 24),
                nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ])
            setOnlyHeaderLayout()
            return
        case 6:
            firstTextField.removeFromSuperview()
            secondTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            locationButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 7
            firstTextField.text = ""
            header.headerSubTitle.text = "What’s your phone number?"
            firstTextField.placeholder = "Phone Number"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 7 :
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 8
            firstTextField.text = ""
            header.headerSubTitle.text = "Add username"
            firstTextField.placeholder = "Username"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 8 :
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 9
            header.headerSubTitle.text = "Add password"
            firstTextField.text = ""
            firstTextField.placeholder = "Password"
            secondTextField.text = ""
            secondTextField.placeholder = "Confirm password"
            view.addSubview(firstTextField)
            view.addSubview(secondTextField)
            view.addSubview(nextButton)
            NSLayoutConstraint.activate([
                firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
                firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
                firstTextField.bottomAnchor.constraint(equalTo: view.centerYAnchor),
                firstTextField.heightAnchor.constraint(equalToConstant: 60),
                
                secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
                secondTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
                secondTextField.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 16),
                secondTextField.heightAnchor.constraint(equalToConstant: 60),
                
                nextButton.heightAnchor.constraint(equalToConstant: 56),
                nextButton.topAnchor.constraint(equalTo: secondTextField.bottomAnchor, constant: 24),
                nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ])
            setOnlyHeaderLayout()
            return
        case 9 :
            firstTextField.removeFromSuperview()
            secondTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            header.removeFromSuperview()
            GlobalProperties.signUpPageCount = 10
            firstTextField.text = ""
            header = UISignUpHeader(frame: .zero, headerSubtitle: "What’s your business name?",indicator: 2)
            firstTextField.placeholder = "Business Name"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(header)
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 10:
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 11
            firstTextField.text = ""
            header.headerSubTitle.text = "What’s your business registration number?"
            firstTextField.placeholder = "Number"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 11:
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 12
            firstTextField.text = ""
            header.headerSubTitle.text = "What’s your business legal form?"
            firstTextField.placeholder = "Legal form"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 12:
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 13
            firstTextField.text = ""
            header.headerSubTitle.text = "What’s your VAT number?"
            firstTextField.placeholder = "VAT number"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 13:
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 14
            firstTextField.text = ""
            header.headerSubTitle.text = "What’s your business address?"
            firstTextField.placeholder = "Business address"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
        case 14:
            firstTextField.removeFromSuperview()
            nextButton.removeFromSuperview()
            GlobalProperties.signUpPageCount = 15
            firstTextField.text = ""
            header.headerSubTitle.text = "What’s your business email address?"
            firstTextField.placeholder = "Business email address"
            nextButton.backgroundColor = .disabledBlue
            nextButton.isEnabled = false
            dateTime.removeFromSuperview()
            nextButton.removeFromSuperview()
            view.addSubview(firstTextField)
            view.addSubview(nextButton)
            setLayout()
            return
            
        default : break
        }
    }
}


