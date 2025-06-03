//
//  UserDatabase.swift
//  HappyOurs
//
//  Created by caroletm on 03/06/2025.
//

import Foundation

var userData: [User] = [
    User(id: UUID(), username: "caroletm", email: "caroletm@gmail.com", ville: "Paris", currentImageName: "caroletm"),
]

var id = UUID()
var username: String
var email: String
var ville: String
var currentImageName: String?

let participant = Participant(username: "Carolinedu94", email: "caro.94@simplon.co", ville: "Vincenne")
participant.currentImageName = "carolineImage"
