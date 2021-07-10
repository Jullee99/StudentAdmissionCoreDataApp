//
//  ViewController.swift
//  StudentAdmissionCoreDataApp
//
//  Created by DCS on 10/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let mybuttonAdmin:UIButton = {
        let button = UIButton()
        button.setTitle("Admin Login", for: .normal)
        button.addTarget(self, action: #selector(AdminloginTapped), for: .touchUpInside)
        button.backgroundColor = .black
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let mybuttonStud:UIButton = {
        let button = UIButton()
        button.setTitle("Student Login", for: .normal)
        button.addTarget(self, action: #selector(StudloginTapped), for: .touchUpInside)
        button.backgroundColor = .black
        button.layer.cornerRadius = 6
        return button
    }()

    @objc private func AdminloginTapped()
    {
        print("click..")
        let vc = AdminLoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func StudloginTapped()
    {
        let vc = StudLoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Student Management System"
        view.addSubview(mybuttonAdmin)
        view.addSubview(mybuttonStud)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "s3")!)
    
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mybuttonAdmin.frame = CGRect(x: 40, y: 450, width: view.width - 80, height: 50)
        mybuttonStud.frame = CGRect(x: 40, y: mybuttonAdmin.bottom + 20, width: view.width - 80, height: 50)
        
    }

}

