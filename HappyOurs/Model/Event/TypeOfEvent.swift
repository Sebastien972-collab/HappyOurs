//
//  GoingOut.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 05/06/2025.
//

import Foundation

//enum TypeOfEvent: String, CaseIterable {
//    case concert = "Concert 🎤"
//    case club = "Club 🪩"
//    case festival = "Festival 🎉"
//    case degustation = "Dégustation 😋"
//    case openAir = "Open Air ☀️"
//    case classic = "Classique 🎻"
//    
//}

enum TypeOfEvent: String, CaseIterable {
    case concert
    case club
    case festival
    case degustation
    case openAir
    case classic
    
    var name : String {
        switch self{
        case.concert: return "Concert 🎤"
        case.club: return "Club 🪩"
        case.festival: return "Festival 🎉 "
        case.degustation: return "Dégustation 😋"
        case.openAir: return "Open Air ☀️"
        case.classic: return "Classique 🎻"
        }
    }
    
    var descriptionCategorie: String{
        switch self{
        case.concert: return "Sur scène 🎤"
        case.club: return "Allons danser 🪩"
        case.festival: return "Faire la fête 🎉 "
        case.degustation: return "Expérience culinaire 😋"
        case.openAir: return "En plein air ☀️"
        case.classic: return "Concertos classiques 🎻"
        }
    }
    
}
