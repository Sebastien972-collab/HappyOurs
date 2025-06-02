//
//  Cocktail.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 30/05/2025.
//

import Foundation

struct Cocktail {
    let name: String
    let imageName: String
    var description: String
    
    static var preview: Cocktail {
        Cocktail(name: "Mojito", imageName: "cocktail-3", description: "Beaucoup d'alcool !")
    }
}
