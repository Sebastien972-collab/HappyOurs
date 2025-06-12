//
//  MessagesDatabase.swift
//  HappyOurs
//
//  Created by caroletm on 10/06/2025.
//

import Foundation

struct DatabaseMessages {
    
    static var messagesData: [Message] {
        let participants = DatabaseParticipants.participantData
        
        return [
            Message(receiverID: participants[1].id, senderID: participants[0].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[0].id, senderID: participants[1].id, text: "Oui et toi ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[1].id,  senderID: participants[0].id, text: "Ou vas tu ce soir ?\nT'as envie de boire quelque chose ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[0].id,  senderID: participants[1].id, text: "Oui, allons boire un verre.", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[1].id,  senderID: participants[0].id, text: "Ou souhaites tu aller?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[0].id,  senderID: participants[1].id, text: "Hmm, je crois qu'ils offrent des mojitos à tous les participants à cet évènement", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[1].id,  senderID: participants[0].id, text: "Ah oui, c'est vrai! Ca te dit d'y aller ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[0].id,  senderID: participants[1].id, text: "Carrément!", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[1].id,  senderID: participants[0].id, text: "On se donne rendez vous à quelle heure?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[0].id,  senderID: participants[1].id, text: "Je suis libre à 20h", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[1].id,  senderID: participants[0].id, text: "Ok 20h c'est parfait! ", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[0].id,  senderID: participants[1].id, text: "A ce soir!", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[1].id,  senderID: participants[0].id, text: "A toute !", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
        ]
    }
}
