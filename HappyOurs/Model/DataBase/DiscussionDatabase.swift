//
//  DiscussionDatabase.swift
//  HappyOurs
//
//  Created by caroletm on 03/06/2025.
//

import Foundation

struct DatabaseDiscussion {

    static var discussionData: [Discussion] {
        let participants = DatabaseParticipants.participantData
        
        return [
            Discussion(
                id: UUID(),
                interlocutorID: participants[7].id,
                type: .publicChat,
                description: "Que penses tu de cette nouvelle idée de restaurant",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData,
                userIDs: [participants[7].id, participants[0].id],
                photoEvent: Event.allEvents[0].imageEventName ?? "event-1",
                nameEvent: Event.allEvents[0].name
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[1].id,
                type: .privateChat,
                description: "Hello, ça va?",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData,
                userIDs: [participants[1].id, participants[0].id]
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[2].id,
                type: .publicChat,
                description: "Organisation du week-end avec tout le groupe",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData,
                userIDs: [participants[2].id, participants[0].id],
                photoEvent: Event.allEvents[3].imageEventName ?? "event-1",
                nameEvent: Event.allEvents[3].name
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[3].id,
                type: .privateChat,
                description: "Voici ce que j'ai fait pour le week-end",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData,
                userIDs: [participants[3].id, participants[0].id]
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[4].id,
                type: .publicChat,
                description: "Merci",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData,
                userIDs: [participants[4].id, participants[0].id],
                photoEvent: Event.allEvents[1].imageEventName ?? "event-1",
                nameEvent: Event.allEvents[1].name
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[5].id,
                type: .privateChat,
                description: "Tous les jours en groupe",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData,
                userIDs: [participants [5].id, participants[0].id]
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[6].id,
                type: .privateChat,
                description: "Un cadeau pour les amis",
                lastDateMessage: Date(),
                messages:DatabaseMessages.messagesData,
                userIDs: [participants[6].id, participants[0].id]
            )
        ]
    }
}

