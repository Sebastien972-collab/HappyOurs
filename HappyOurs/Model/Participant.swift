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
    
    static var preview: Participant {
        let participant = Participant(username: "Carolinedu94", email: "caro.94@simplon.co", ville: "Vincenne")
        participant.currentImageName = "carolineImage"
        return participant
    }
    
    
}
