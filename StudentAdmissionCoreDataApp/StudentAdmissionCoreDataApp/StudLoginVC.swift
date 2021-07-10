//
//  StudLoginVC.swift
//  StudentAdmissionCoreDataApp
//
//  Created by DCS on 10/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class StudLoginVC: UIViewController {
    
    
    private let usernameTextField:UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Username"
        textfield.textAlignment = .center
        textfield.borderStyle = .roundedRect
        textfield.layer.borderWidth = 3
        textfield.autocapitalizationType = .none
        return textfield
    }()
    
    
    private let passwordTextField:UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.textAlignment = .center
        textfield.borderStyle = .roundedRect
        textfield.layer.borderWidth = 3
        textfield.isSecureTextEntry = true
        return textfield
    }()
    
    private let mybutton:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 6
        button.backgroundColor = .black
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(mybutton)
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        usernameTextField.frame = CGRect(x: 40, y: 200, width:view.width - 80, height: 40)
        passwordTextField.frame = CGRect(x: 40, y: usernameTextField.bottom + 20, width: view.width - 80, height: 40)
        mybutton.frame = CGRect(x: 40, y: passwordTextField.bottom + 40, width: view.width - 80, height: 40)
        
    }
        
        @objc private func loginTapped()
        {
            if usernameTextField.text == "student" && passwordTextField.text == "student"
            {
                UserDefaults.standard.set(usernameTextField.text!, forKey: "email")
                let vc = DetailStudentVC()
                navigationController?.pushViewController(vc, animated: true)
            } else {
                let alert = UIAlertController(title: "Alert!", message: "Email and Password didn't match", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
        }
}

