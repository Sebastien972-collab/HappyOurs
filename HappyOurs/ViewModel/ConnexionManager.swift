//
//  ConnexionManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 12/06/2025.
//

import Foundation


class ConnexionManager: ObservableObject {
    
    @Published var manager: UserManager = UserManager()
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var city: String = ""
    @Published var currentImage: String?
    @Published var description: String = ""
    
    @Published var error: Error = ConnectionError.uknowError
    @Published var showError: Bool = false
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
        guard !username.isEmpty || !email.isEmpty || !city.isEmpty else {
            self.error = ConnectionError.fieldEmpty
            self.showError = true
            return
        }
        switch currentConnexionType {
        case .signUp:
            signUp()
        case .signIn:
            signIn()
        }
    }
    ///Inscription User
    private func signUp() {
        
        switch currentSignUpAccountType {
        case .particpant:
            manager.currentUser = Participant(username: username, email: email, ville: city)
        case .bussines:
            manager.currentUser = Business(username: username, email: email, ville: city)
        }
    }
    ///Connexion User
    private func signIn() {
        
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
