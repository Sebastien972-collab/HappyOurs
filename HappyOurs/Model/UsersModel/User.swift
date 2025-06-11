//
//  User.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 28/05/2025.
//

import Foundation

class User: Identifiable, Equatable, Hashable {
    var id: UUID
    var username: String
    var email: String
    var ville: String
    var currentImageName: String?

    init(id: UUID = UUID(), username: String, email: String, ville: String, currentImageName: String? = nil) {
        self.id = id
        self.username = username
        self.email = email
        self.ville = ville
        self.currentImageName = currentImageName
    }

    static func == (lhs: User, rhs: User) -> Bool {
        lhs.username == rhs.username && lhs.email == rhs.email
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(username)
        hasher.combine(email)
    }
}
