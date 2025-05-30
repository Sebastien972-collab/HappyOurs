//
//  Participant.swift
//  HappyOurs
//
//  Created by Sébastien Daguin on 29/05/2025.
//

import Foundation

class Participant: User {
    var favoriteCocktail: Cocktail?
    
     init(username: String, email: String, ville: String) {
        super.init(username: username, email: email, ville: ville)
    }
    
    let preview: Participant = Participant(username: "Carolinedu94", email: "caro.94@simplon.co", ville: "Vincenne")
    
    
}
