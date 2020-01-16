//
//  TopViewController.swift
//  Test-10-14
//
//  Created by 杉浦多可楽 on 2019/12/13.
//  Copyright © 2019 多可楽. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class TopViewController: BaseViewController {
    var userModel = UserModel()
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        userModel.id = "1"
        userModel.name = "テスト"
        userModel.description = "詳細"
        
        UserModel.update(request: userModel){
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopViewController {
    
}

// MARK: - method
extension TopViewController {
    
}
