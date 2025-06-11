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
    var ingredients: [String]?
    
    
    static var cocktailDb: [Cocktail] = [
        Cocktail(name: "Mojito", imageName: "cocktail-3", description: "Beaucoup d'alcool !"),
        Cocktail(name: "Margarita", imageName: "cocktail-2", description: "Un classique à base de tequila."),
        Cocktail(name: "Piña Colada", imageName: "cocktail-1", description: "Un cocktail tropical à base de rhum, de lait de coco et de jus d'ananas."),
        Cocktail(name: "Cosmopolitan", imageName: "cocktail-4", description: "Un cocktail élégant à base de vodka, de triple sec, de jus de canneberge et de jus de citron vert."),
        Cocktail(name: "Martini", imageName: "cocktail-5", description: "Un cocktail sophistiqué à base de gin et de vermouth."),
        Cocktail(name: "Daiquiri", imageName: "cocktail-2", description: "Un cocktail rafraîchissant à base de rhum, de jus de citron vert et de sucre."),
        Cocktail(name: "Old Fashioned", imageName: "cocktail-3", description: "Un cocktail classique à base de whisky, de sucre, d'Angostura bitters et d'une touche d'eau."),
        Cocktail(name: "Negroni", imageName: "cocktail-1", description: "Un cocktail italien à base de gin, de vermouth rouge et de Campari."),
        Cocktail(name: "Espresso Martini", imageName: "cocktail-4", description: "Un cocktail énergisant à base de vodka, de café espresso et de liqueur de café."),
        Cocktail(name: "Bloody Mary", imageName: "cocktail-1", description: "Un cocktail épicé à base de vodka, de jus de tomate et d'une variété d'assaisonnements.")
    ]
    
    static var preview: Cocktail {
       Cocktail(name: "Mojito", imageName: "cocktail-3", description: "Beaucoup d'alcool !", ingredients:[
        "10 feuilles de menthe fraîche",
        "1/2 citron vert coupé en quartiers",
        "2 cuillères à café de sucre de canne",
        "4 cl de rhum blanc",
        "6 cl d’eau gazeuse",
        "Glaçons à volonté"
    ])
        
    }
}
