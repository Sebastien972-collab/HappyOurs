//
//  ConnexionManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 12/06/2025.
//

import Foundation

@Observable
class ConnexionManager {
    
    var manager: UserManager
    var username: String = ""
    var email: String = ""
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
    
    init(manager: UserManager) {
        self.manager = manager
    }
    
    
    ///Inscription User
    func signUp(_ user: User) {
        guard !username.isEmpty && !email.isEmpty && !city.isEmpty else { return }
        switch currentSignUpAccountType {
        case .particpant:
            manager.currentUser = Participant(username: username, email: email, ville: city)
        case .bussines:
            manager.currentUser = Business(username: username, email: email, ville: city)
        }
    }
    ///Connexion User
    func signIn() {
        guard !username.isEmpty && !email.isEmpty else { return }
        
        switch currentSignUpAccountType {
        case .particpant:
            manager.currentUser = Participant.preview
        case .bussines:
            manager.currentUser = Business.preview
        }
    }
    
    ///Deconnexion User
    func signOut() {
        manager.currentUser = .guest
    }
}
