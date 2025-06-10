//
//  Business.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 30/05/2025.
//

import Foundation
import SwiftUICore

class Business: User {
    var cocktails: [String] = [""]
    var events: [String] = [""]
    
    
    
    static var preview: Business {
        let business = Business(username: "L'empire club", email: "empireclub@empireclub.com", ville: "Chilly-Mazarin",)
        business.cocktails = ["Rhum Coca", "Rhum Red Bull", "Rhum Ananas"]
        business.events = ["La Caribéenne", "La BedRoom Pyjama Party", "Fête de la Musique"]
        
        return business
    }
}
