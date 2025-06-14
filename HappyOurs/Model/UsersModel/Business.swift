//
//  Business.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 30/05/2025.
//

import Foundation

class Business: User {
    var cocktails: [String] = [""]

    
    
    static var preview: Business {
        let business = Business(username: "L'empire club", email: "empireclub@empireclub.com", ville: "Chilly-Mazarin",)
        business.currentImageName = "lempireclub"
        business.cocktails = ["Rhum Coca", "Rhum Red Bull", "Rhum Ananas"]
        business.description = "L'EMPIRE CLUB est une discothèque située à Chilly-Mazarin, en Essonne. C'est un lieu connu pour ses soirées animées et son ambiance festive."
        
        return business
    }
}
