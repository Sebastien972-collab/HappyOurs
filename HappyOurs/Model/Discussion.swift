//
//  Discussion.swift
//  HappyOurs
//
//  Created by caroletm on 03/06/2025.
//

import Foundation

struct Discussion : Identifiable {
    let id: UUID
    let interlocutorID: UUID
    let type : DiscussionType
    let description: String
    let lastDateMessage: Date
}

enum DiscussionType : String {
    case group
    case solo
}


