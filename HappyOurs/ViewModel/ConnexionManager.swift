//
//  ConnexionManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 12/06/2025.
//

import Foundation

@Observable
class ConnexionManager {
    
    
    
    var username: String = ""
    var city: String = ""
    var currentImage: String?
    var description: String = ""
    
    enum ConnexionType {
        case signUp
        case signIn
    }
    enum SignUpAccountType {
        case particpant
        case bussines
    }
    var currentConnexionType: ConnexionType = .signIn
    var currentSignUpAccountType: SignUpAccountType = .particpant
    
    
    
    
    
    func signIn(_ user: User) {
        switch currentSignUpAccountType {
        case .particpant:
            print("user")
        case .bussines:
            print("user")
        }
    }
}
