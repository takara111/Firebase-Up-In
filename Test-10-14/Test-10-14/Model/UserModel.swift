//
//  UserModel.swift
//  Test-10-14
//
//  Created by 杉浦多可楽 on 2019/12/13.
//  Copyright © 2019 多可楽. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseDatabase

class UserModel {
    var id: String?
    var name: String?
    var description: String?
}

extension UserModel {
    static func setparamater(request: UserModel) -> [String:Any]{
        var param = [String:Any]()
        if let id = request.id{param["id"] = id}
        if let name = request.name{param["name"] = name}
        if let description = request.description{param["description"] = description}
        return param
    }
    
    static func update(request:UserModel,success: @escaping() -> Void){
        let dbRef = Database.database().reference().child("users")
        let param = setparamater(request: request)
        dbRef.updateChildValues(param)
    }
}
