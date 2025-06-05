//
//  Event.swift
//  HappyOurs
//
//  Created by Sébastien Daguin on 29/05/2025.
//

import Foundation

struct Event: Identifiable {
    var id: UUID = UUID()
    var organisator: Business
    var name: String
    var date: Date
    var imageEventName: String?
    var imageNames: [String] = []
    var participants: [User] = []
    var bestCocktail: Cocktail
    var typeOfEvent: TypeOfEvent = .club
    
    enum TypeOfEvent: String, CaseIterable {
        case concert = "Concert 🎤"
        case club = "Club 🪩"
        case festival = "Festival 🎉 "
        case degustation = "Découverte 😋"
        case openAir = "Open Air ☀️"
        case classic = "Classique 🎻"
        
    }
    static var defaultEvent: Event {
        var event = Event(organisator: .preview, name: "Tropical Summer", date: Date.now, bestCocktail: .preview )
        event.imageEventName = "event-4"
        return event
    }
    
}
