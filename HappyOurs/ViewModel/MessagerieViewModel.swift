//
//  MessagerieViewModel.swift
//  HappyOurs
//
//  Created by caroletm on 05/06/2025.
//

import Foundation
import Observation

class MessagerieViewModel: ObservableObject {
    
    //  MARK: - App data
    @Published var participantsVM = DatabaseParticipants.participantData
    @Published var businessVM = DatabaseBusiness.businessData
    @Published var discussionVM = DatabaseDiscussion.discussionData
    
    //  MARK: - discussions
    
    //  MARK: - messages
    @Published var messagesVM : [Message] = DatabaseMessages.messagesData
    
    func sendMessage(message : String) {
        print(message)
    }
    
}

