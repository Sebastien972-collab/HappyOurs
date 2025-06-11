
//
//  ParticipantManager.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 05/06/2025.
//

import Foundation


class BusinessManager: ObservableObject {
    let manager: UserManager
    var currentUser: Business {
//        manager.currentUser as! Business
        Business.preview
    }
    init(manager: UserManager) {
        self.manager = manager
    }
}


