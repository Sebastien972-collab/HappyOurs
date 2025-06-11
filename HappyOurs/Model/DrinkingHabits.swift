//
//  alcoolLove.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 06/06/2025.
//

import Foundation


//enum AlcoolLove: String, CaseIterable {
//    case small
//    case medium
//    case large
//
//    var imageName: String {
//        switch self {
//        case .small:
//            return "cocktail-picto-1"
//        case .medium:
//            return "cocktail-picto-2"
//        case .large:
//            return "cocktail-picto-3"
//        }
//    }
//
//    var description: String {
//        switch self {
//        case .small:
//            return "Pieds léger"
//        case .medium:
//            return "Amateur·ice"
//        case .large:
//            return "Amateur·ice"
//        }
//    }
//}

struct DrinkingHabits {
    let name: String
    let imageName: String
    var description: String
    
    static var alcoolLoverType: [DrinkingHabits] = [
        DrinkingHabits(name: "Un peu", imageName: "cocktail-picto-1", description: "En société"),
        DrinkingHabits(name: "Beaucoup", imageName: "cocktail-picto-2", description: "Amateur"),
        DrinkingHabits(name: "À la folie", imageName: "cocktail-picto-3", description: "Au goulot !")
    ]
}
