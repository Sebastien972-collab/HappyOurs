//
//  EventManager.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 05/06/2025.
//

import SwiftUI

@Observable
class EventManager {
    var currentUser: User = Business.preview
    var isLoggedIn: Bool = true
    var IsABusseiness: Bool {
        currentUser is Business
    }
    
    var trandingEvents: [Event] = [.defaultEvent, .defaultEvent, .defaultEvent]
    var allEvents: [Event] = Event.allEvents
    
}
