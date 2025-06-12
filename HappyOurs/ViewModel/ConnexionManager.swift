//
//  ConnexionManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 12/06/2025.
//

import Foundation


class ConnexionManager: ObservableObject {
    
    var manager: UserManager
    var username: String = ""
    var email: String = ""
    var city: String = ""
    var currentImage: String?
    var description: String = ""
    
    enum ConnexionType: String {
        case signUp = "Inscription"
        case signIn = "Connexion"
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
    
    func connection() {
        switch currentConnexionType {
        case .signUp:
            signUp()
        case .signIn:
            signIn()
        }
    }
    ///Inscription User
    private func signUp() {
        guard !username.isEmpty && !email.isEmpty && !city.isEmpty else { return }
        switch currentSignUpAccountType {
        case .particpant:
            manager.currentUser = Participant(username: username, email: email, ville: city)
        case .bussines:
            manager.currentUser = Business(username: username, email: email, ville: city)
        }
    }
    ///Connexion User
    private func signIn() {
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
