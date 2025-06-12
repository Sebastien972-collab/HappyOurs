//
//  ConnectionError.swift
//  HappyOurs
//
//  Created by Dembo on 12/06/2025.
//

import Foundation


enum ConnectionError : Error {
    case invalidField , fieldEmpty, noAccountFound ,uknowError
}

extension ConnectionError : LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidField :
            return NSLocalizedString("Le text n'est pas valide", comment: "Champ invalid")
        case .fieldEmpty :
            return NSLocalizedString("Oups... Ce champ ne peut pas être vide", comment: "Champ vide")
        case .noAccountFound :
            return NSLocalizedString("Oups... Nous n'avons rien trouver pour cette recherche.", comment: "Pas de news trouver")
        case .uknowError :
            return NSLocalizedString("Une erreur inconnue est survenue", comment: "Unknow Error")
        }
        
    }
    
}
