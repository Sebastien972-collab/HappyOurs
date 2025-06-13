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
        let participant = Participant(username: "Carolinedu94", email: "caro.94@simplon.co", ville: "Vincennes")
        participant.currentImageName = "Caroline"
        participant.favoriteCocktail = Cocktail.cocktailDb[5]
        participant.favortieEvent = .festival
        participant.favortieGroups = .small
        participant.currentImageName = "Caroline"
        participant.punchline = "Je ne dis jamais non à un bon mojito"
        participant.drinkingHabit = DrinkingHabits.alcoolLoverType[1]   
        participant.description = "Graphiste de métier, curieuse de nature, j’adore les conversations qui durent plus longtemps que le cocktail dans mon verre. Si tu aimes les échanges spontanés, les soirées pleines de rires et les rencontres qui sortent du cadre, on risque bien de se comprendre."
        participant.events = Event.allEvents.filter({ $0.typeOfEvent == .festival })
        return participant
    }
    static var sebAccount: Participant {
        let participant = Participant(username: "Sébastien", email: "sebastien.daguin94@simplon.co", ville: "Villejuif")
        participant.currentImageName = "seb"
        participant.favoriteCocktail = Cocktail.cocktailDb[3]
        participant.favortieEvent = .club
        participant.favortieGroups = .large
        participant.punchline = "Le plus simple 🍕⚽️🎤"
        participant.drinkingHabit = DrinkingHabits.alcoolLoverType[2]
        participant.description = "Développeur iOS passioné à la recherche d'amis pour un soir ou pour la vie"
        participant.events = Event.allEvents.filter({ $0.typeOfEvent == .club })
        return participant
    }
    
}
