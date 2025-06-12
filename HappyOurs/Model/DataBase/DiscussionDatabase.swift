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
                type: .group,
                description: "Que penses tu de cette nouvelle idée de restaurant",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[1].id,
                type: .solo,
                description: "Hello, ça va?",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[2].id,
                type: .group,
                description: "Organisation du week-end hackathon avec tout le groupe",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[3].id,
                type: .solo,
                description: "Voici ce que j'ai fait pour le week-end",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[4].id,
                type: .group,
                description: "Merci",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[5].id,
                type: .group,
                description: "Tous les jours en groupe",
                lastDateMessage: Date(),
                messages: DatabaseMessages.messagesData
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[6].id,
                type: .solo,
                description: "Hackathon pour les amis",
                lastDateMessage: Date(),
                messages:DatabaseMessages.messagesData
            )
        ]
    }
}

