//
//  TopViewController.swift
//  TestUserModel1
//
//  Created by 酒井典昭 on 2019/10/31.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class TopViewController: BaseViewController {
        var UserModels: [UserModel] = []
    @IBAction func touchedButton(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        secondViewController.UserModels = self.UserModels
        animatorManager.navigationType = .slide_pop
        transitionViewController(from: self, to: secondViewController)
        
    }
    
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let userModel1 = UserModel()
        let userModel2 = UserModel()
        
        userModel1.age = "20"
        userModel2.id = "555"
        
        UserModels += [userModel1]
        UserModels += [userModel2]
        
    }
}

// MARK: - Protocol
extension TopViewController {
    
}

// MARK: - method
extension TopViewController {
    
}

