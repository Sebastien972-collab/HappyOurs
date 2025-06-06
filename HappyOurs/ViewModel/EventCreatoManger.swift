//
//  EventCreatoManger.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import Foundation

class EventCreatoManger: ObservableObject {
    var bussniessCréator: Business = .preview
    var nameOfEvent: String = ""
    var dateOfEvenet: Date = .now
    var typeOfEvenet: TypeOfEvent = .concert
    
    
}
