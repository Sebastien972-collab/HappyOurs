//
//  Discussion.swift
//  HappyOurs
//
//  Created by caroletm on 03/06/2025.
//

import Foundation

//struct Discussion : Identifiable {
//    let id: UUID
//    let interlocutorID: UUID
//    let type : DiscussionType
//    let description: String
//    let lastDateMessage: Date
//    let messages : [Message]
//}

enum DiscussionType : String {
    case privateChat
    case publicChat
}

class Discussion : Identifiable {
    
    let id: UUID
    let interlocutorID: UUID
    let type : DiscussionType
    let description: String
    let lastDateMessage: Date
    let messages : [Message]
    let userIDs : [UUID]
    let photoEvent : String?
    let nameEvent : String?
    
    init(id: UUID, interlocutorID: UUID, type: DiscussionType, description: String, lastDateMessage: Date, messages: [Message], userIDs: [UUID], photoEvent : String? = nil, nameEvent : String? = nil) {
        self.id = id
        self.interlocutorID = interlocutorID
        self.type = type
        self.description = description
        self.lastDateMessage = lastDateMessage
        self.messages = messages
        self.userIDs = userIDs
        self.photoEvent = photoEvent
        self.nameEvent = nameEvent
    }
}
