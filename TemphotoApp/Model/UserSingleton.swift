//
//  UserSingleton.swift
//  TemphotoApp
//
//  Created by Emre Tekin on 1.06.2022.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init() {
        
    }
}
