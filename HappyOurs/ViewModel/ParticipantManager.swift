//
//  ParticipantManager.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 05/06/2025.
//

import Foundation


class ParticipantManager: ObservableObject {
    let manager: UserManager
    var currentUser: Participant {
//        manager.currentUser as! Participant
        Participant.preview
    }
    init(manager: UserManager) {
        self.manager = manager
    }
}


