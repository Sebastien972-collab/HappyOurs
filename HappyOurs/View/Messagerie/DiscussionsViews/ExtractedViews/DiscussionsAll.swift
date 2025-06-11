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
    @State var selectedParticipant: Participant?
    
    var body: some View {
        
        NavigationStack {
            
            ForEach(messagerieViewModel.discussionVM) { discussion in
                NavigationLink(destination: ChatView( selectedParticipant: $selectedParticipant)) {
                    DiscussionLine(discussion: discussion)
                }.foregroundColor(.black)
            }
        }
    }
}

#Preview {
    DiscussionAll()
        .environmentObject(MessagerieViewModel())
}

