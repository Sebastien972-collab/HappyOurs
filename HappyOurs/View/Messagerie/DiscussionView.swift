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
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Picker_Discussion_View (selectedTab: $selectedTab, tabs: tabs)
                        .padding(5)
                    
                    if selectedTab == "Toutes" {
                        DiscussionAll()
                    }else if selectedTab == "Groupes" {
                        DiscussionGroup()
                    }else{
                        DiscussionPrivate()
                    }
                    Spacer()
                    
                        .navigationTitle("Conversations")
                    
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DiscussionView()
            .environmentObject(MessagerieViewModel())
    }
}
