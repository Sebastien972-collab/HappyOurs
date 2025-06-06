//
//  Event.swift
//  HappyOurs
//
//  Created by Sébastien Daguin on 29/05/2025.
//

import Foundation

struct Event: Identifiable{
    var id: UUID = UUID()
    var organisator: Business
    var name: String
    var date: Date
    var imageEventName: String?
    var imageNames: [String] = []
    var participants: [User] = []
    var bestCocktail: Cocktail
    var typeOfEvent: TypeOfEvent = .club
    var address: String = ""
    var dateFormatted: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.dateFormat = "EEEE d MMMM 'à' HH'h'mm"
        return formatter.string(from: date)
    }
    enum TypeOfEvent: String, CaseIterable {
        case concert = "Concert 🎤"
        case club = "Club 🪩"
        case festival = "Festival 🎉"
        case degustation = "Découverte 😋"
        case openAir = "Open Air ☀️"
        case classic = "Classique 🎻"
        
    }
    
    
    static var defaultEvent: Event {
        var event = Event(organisator: .preview, name: "Tropical Summer", date: Date.now, bestCocktail: .preview )
        event.imageEventName = "event-4"
        event.address = "3 Rte de Longjumeau, 91380 Chilly-Mazarin"
        return event
    }
    
}
