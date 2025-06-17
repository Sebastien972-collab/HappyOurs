//
//  UserManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 28/05/2025.
//

import Foundation

class UserManager: ObservableObject {
    
    ///Is the current application user logged in or not
    @Published var currentUser: User = .guest
    
    /// Check if the current user is a guest account
     var isAuthenticated: Bool {
        currentUser != .guest
    }
    /// Check if the current user has a bussness account
    var isABussinesUser: Bool {
        currentUser is Business
    }
    
    func logOut() {
        currentUser = .guest
    }
    
    
    
    //MARK: - Connexion method
    
    ///Sing in User in application
}
