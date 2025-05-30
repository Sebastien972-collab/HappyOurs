//
//  Event.swift
//  HappyOurs
//
//  Created by Sébastien Daguin on 29/05/2025.
//

import Foundation

class Event: Identifiable {
    var id: UUID = UUID()
    var organisator: Business
    var name: String
    var date: Date
    var imageEvent: Data?
    var images: [Data]?
    var participants: [User] = []
    var bestCocktail: Cocktail
    
    init(organisator: Business, name: String, date: Date, imageEvent: Data? = nil, images: [Data]?, bestCocktail: Cocktail ) {
        self.organisator = organisator
        self.name = name
        self.date = date
        self.imageEvent = imageEvent
        self.images = images
        self.bestCocktail = bestCocktail
    }
    
}
