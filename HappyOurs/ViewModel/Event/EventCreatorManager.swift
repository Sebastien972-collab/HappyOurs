//
//  EventCreatorManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import Foundation
import SwiftUICore

@Observable
class EventCreatorManager {
    var organisator: Business = .preview
    var nameOfEvent: String = ""
    var dateOfEvent: Date = Date.now
    var localisationOfEvent: String = ""
    var typrOfEvent: Event.TypeOfEvent = .festival
    var image: Image?
    var eventDescription: String = ""
    var numberOfParticipants: Int = 0
    var numberOfFreeCocktail: Int = 0
    var cocktailForEvent: Cocktail = .preview
    
    
    // MARK: - Creator
    /// Cette fonction convertit la date en string
    func createNewEvent() {
        var newEvent = Event(organisator: organisator, name: nameOfEvent, date: dateOfEvent, bestCocktail: cocktailForEvent)
        newEvent.imageEventName = "event-4"
        

    }
    /// Cette fonction convertit la date en string
    func convertDateInString() -> String {
         let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: dateOfEvent)
        
    }
    // MARK: - Deletor
    
}
