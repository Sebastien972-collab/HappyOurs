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
            
            Message(receiverID: participants[2].id, senderID: participants[0].id, text: "Salut! Tu fais quoi ce week-end ?", photoSender: participants[2].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[3].id, senderID: participants[0].id, text: "Hey, tu viens à la soirée chez Clara demain ?", photoSender: participants[3].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[4].id, senderID: participants[0].id, text: "J'ai entendu dire que tu mixes samedi ? Trop cool !", photoSender: participants[4].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[5].id, senderID: participants[0].id, text: "Besoin de ton avis : plutôt pizza ou sushi ce soir ?", photoSender: participants[5].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[6].id, senderID: participants[0].id, text: "Coucou ! Tu passes au parc avec les autres ?", photoSender: participants[6].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[7].id, senderID: participants[0].id, text: "Ça te dit une session ciné vendredi ?", photoSender: participants[7].currentImageName ?? "person", createdAt: Date()),
            
            Message(receiverID: participants[0].id, senderID: participants[2].id, text: "Hey! Je pensais aller me balader ou voir un film. Tu veux te joindre à moi ?", photoSender: participants[2].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[0].id, senderID: participants[3].id, text: "Oui carrément ! J'amène des bières 🍻", photoSender: participants[3].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[0].id, senderID: participants[4].id, text: "Haha oui, c’est au Jungle Bar à 22h. Ramène tes potes !", photoSender: participants[4].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[0].id, senderID: participants[5].id, text: "Sushi, sans hésiter 😋", photoSender: participants[5].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[0].id, senderID: participants[6].id, text: "Oui j’y serai vers 16h, on prend un ballon ?", photoSender: participants[6].currentImageName ?? "person", createdAt: Date()),

            Message(receiverID: participants[0].id, senderID: participants[7].id, text: "Grave ! Tu veux voir quoi ? J’ai envie de voir un thriller 🔪", photoSender: participants[7].currentImageName ?? "person", createdAt: Date()),
            
        ]
    }
}
