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
    enum SignUpAccountType: String, CaseIterable {
        case particpant = "Participant"
        case bussines = "Entreprise"
    }
    var currentConnexionType: ConnexionType = .signIn
    var currentSignUpAccountType: SignUpAccountType = .particpant
    
    init(manager: UserManager) {
        self.manager = manager
    }
    
    func connection() {
        guard !username.isEmpty || !email.isEmpty else {
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
            let user = Participant(username: username, email: email, ville: city)
            user.description = Participant.preview.description
            user.currentImageName = Participant.preview.currentImageName
            user.events = Participant.preview.events
            user.punchline = Participant.preview.punchline
            user.favortieEvent = Participant.preview.favortieEvent
            user.favortieGroups = Participant.preview.favortieGroups
            user.favoriteCocktail = Participant.preview.favoriteCocktail
            user.drinkingHabit = Participant.preview.drinkingHabit
            manager.currentUser = user
            
            
        case .bussines:
            let user = Business(username: username, email: email, ville: city)
            user.description = Business.preview.description
            user.currentImageName = Business.preview.currentImageName
            user.events = Business.preview.events
            manager.currentUser.description = Business.preview.description
            manager.currentUser.currentImageName = Business.preview.currentImageName
            manager.currentUser.events = Business.preview.events

            manager.currentUser = user
        }
    }
    ///Connexion User
    private func signIn() {
        
        switch currentSignUpAccountType {
        case .particpant:
            manager.currentUser = Participant.sebAccount
            manager.currentUser.username = username
        case .bussines:
            //manager.signIn(as: Business(username: username, email: email, ville: city))
            print("Sella")
        }
    }
    
    ///Deconnexion User
    func signOut() {
        manager.currentUser = .guest
    }
}
