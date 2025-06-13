//
//  DiscussionList.swift
//  HappyOurs
//
//  Created by caroletm on 03/06/2025.
//

import Foundation
import SwiftUI

struct DiscussionView: View {
    
    var tabs = ["Toutes", "Groupes", "Privées"]
    @State var selectedTab = "Toutes"
    @State var selectedParticipant: Participant?
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack {
                    Picker_Discussion_View (selectedTab: $selectedTab, tabs: tabs)
                        .padding(5)
                    
                    // changement de page en fonction du selected Tab
                    
                    if selectedTab == "Toutes" {
                        DiscussionAll(selectedParticipant: $selectedParticipant)
                    } else if selectedTab == "Groupes" {
                        DiscussionGroup(selectedParticipant: $selectedParticipant)
                    } else {
                        DiscussionPrivate(selectedParticipant: $selectedParticipant)
                    }
                    Spacer()
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Conversations")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            } .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DiscussionView()
        .environmentObject(MessagerieViewModel(userManager: .init()))
}
