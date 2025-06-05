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
                interlocutorID: participants[2].id,
                type: .group,
                description: "Hello ça va?",
                lastDateMessage: Calendar.current.date(byAdding: .day, value: -1, to: Date())!
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[1].id,
                type: .solo,
                description: "Que penses tu de cette nouvelle idée de restaurant?",
                lastDateMessage: Calendar.current.date(byAdding: .hour, value: -5, to: Date())!
            ),
            Discussion(
                id: UUID(),
                interlocutorID: participants[3].id,
                type: .group,
                description: "Organisation du week-end hackathon avec tout le groupe",
                lastDateMessage: Calendar.current.date(byAdding: .day, value: -3, to: Date())!
            )
        ]
    }
}

