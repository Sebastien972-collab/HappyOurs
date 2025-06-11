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
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?\nOu vas tu ce soir ?\nT'as envie de boire quelque chose ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            Message(interlocutorID: participants[1].id, text: "Hello, ça va ?", photoSender: participants[1].currentImageName ?? "person", createdAt: Date()),
            
        ]
    }
}
