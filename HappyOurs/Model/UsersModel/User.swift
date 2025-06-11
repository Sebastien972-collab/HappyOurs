//
//  User.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 28/05/2025.
//

import Foundation

class User: Identifiable, Equatable {
    var id = UUID()
    var username: String
    var email: String
    var ville: String
    var currentImageName: String?
    var description: String?
    
    init(id: UUID = UUID(), username: String, email: String, ville: String) {
        self.id = id
        self.username = username
        self.email = email
        self.ville = ville
    }
    init(username: String, email: String, ville: String, currentImageName: String) {
           self.username = username
           self.email = email
           self.ville = ville
           self.currentImageName = currentImageName
       }
    
    static let guest = User(id: UUID(), username: "Invité", email: "invité@exemple.com", ville: "Nulle part et partout")
    
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.username == rhs.username && lhs.email == rhs.email
    }
    
}
