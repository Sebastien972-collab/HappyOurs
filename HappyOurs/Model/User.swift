//
//  User.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 28/05/2025.
//

import Foundation

class User: Identifiable {
    var id = UUID()
    var username: String
    var email: String
    var ville: String
    var currentImageName: String?
    
    init(id: UUID = UUID(), username: String, email: String, ville: String) {
        self.id = id
        self.username = username
        self.email = email
        self.ville = ville
    }
    
}
