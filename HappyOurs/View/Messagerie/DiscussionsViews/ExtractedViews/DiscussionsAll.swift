//
//  DiscussionsAll.swift
//  HappyOurs
//
//  Created by caroletm on 04/06/2025.
//

import Foundation
import SwiftUI

struct DiscussionAll: View {
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    @Binding var selectedParticipant: Participant?
    
    var body: some View {
        
        NavigationStack {
            
            ForEach(messagerieViewModel.discussionVM) { discussion in
                
                NavigationLink(destination: ChatView(selectedParticipant: $selectedParticipant, discussion: discussion)) {
                    DiscussionLine(discussion: discussion)
                    
                } .simultaneousGesture(TapGesture().onEnded {
                    if let participant = messagerieViewModel.participantsVM.first(where: { $0.id == discussion.interlocutorID }) {
                        selectedParticipant = participant
                    }
                })
                .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    DiscussionAll(selectedParticipant: .constant(DatabaseParticipants.participantData[0]))
        .environmentObject(MessagerieViewModel())
}

