//
//  EventCreatorManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import Foundation
import SwiftUI

@Observable
class EventCreatorManager {
    var userManager: UserManager = UserManager()
        // var organisator: Business = .preview
    var nameOfEvent: String = ""
    var dateOfEvent: Date = Date.now
    var localisationOfEvent: String = ""
    var typrOfEvent: Event.TypeOfEvent = .festival
    var image: Image?
    var eventDescription: String = ""
    var numberOfParticipants: Int = 0
    var numberOfFreeCocktail: Int = 0
    var cocktailForEvent: Cocktail = .preview
    
    var error: Error = ConnectionError.uknowError
    var showError = false
    
    // MARK: - Creator
    
    /// Cette fonction convertit la date en string
    func createNewEvent() {
        guard let user = userManager.currentUser as? Business else {
            error = ConnectionError.uknowError
            showError = true
            return
        }
        
        var newEvent = Event(organisator: user, name: nameOfEvent, date: dateOfEvent, bestCocktail: cocktailForEvent)
        newEvent.imageEventName = "event-4"
        user.events.append(newEvent)
        
        

    }
    /// Cette fonction convertit la date en string
    func convertDateInString() -> String {
         let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: dateOfEvent)
        
    }
    // MARK: - Deletor
    
}
