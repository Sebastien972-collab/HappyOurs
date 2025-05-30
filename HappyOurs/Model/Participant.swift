//
//  Participant.swift
//  HappyOurs
//
//  Created by Sébastien Daguin on 29/05/2025.
//

import Foundation

class Participant: User {
    var favoriteCocktail: Cocktail?
    
     init(username: String, email: String, adresse: String) {
        super.init(username: username, email: email, adresse: adresse)
    }
}
