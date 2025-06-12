//
//  Participant.swift
//  HappyOurs
//
//  Created by Sébastien Daguin on 29/05/2025.
//

import Foundation

class Participant: User {
    var favoriteCocktail: Cocktail?
    var favortieEvent: TypeOfEvent = .concert
    var favortieGroups: Groups = .none
    var age: Int = 18
    var punchline: String = ""
    var drinkingHabit: DrinkingHabits?

    init(username: String, email: String, ville: String) {
        super.init(username: username, email: email, ville: ville)
    }
    
     init(username: String, email: String, ville: String, currentImageName: String) {
        super.init(username: username, email: email, ville: ville, currentImageName: currentImageName)
    }
    
    
    
    
    static var preview: Participant {
        let participant = Participant(username: "Carolinedu94", email: "caro.94@simplon.co", ville: "Vincenne")
        participant.currentImageName = "Caroline"
        participant.favoriteCocktail = Cocktail.cocktailDb[5]
        participant.favortieEvent = .festival
        participant.favortieGroups = .small
        participant.currentImageName = "Caroline"
        participant.punchline = "Je ne dis jamais non à un bon mojito"
        participant.drinkingHabit = DrinkingHabits.alcoolLoverType[1]   
        participant.description = "Graphiste de métier, curieuse de nature, j’adore les conversations qui durent plus longtemps que le cocktail dans mon verre. Si tu aimes les échanges spontanés, les soirées pleines de rires et les rencontres qui sortent du cadre, on risque bien de se comprendre."
        return participant
    }
    
}
