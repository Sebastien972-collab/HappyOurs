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
    var description: String = ""
    
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
        event.participants = DatabaseParticipants.participantData
        event.description =
        """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
"""
        return event
    }
    
}
