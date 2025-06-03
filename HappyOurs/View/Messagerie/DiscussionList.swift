//
//  DiscussionList.swift
//  HappyOurs
//
//  Created by caroletm on 03/06/2025.
//

import Foundation
import SwiftUI

struct DiscussionList: View {
    
    var tabs = ["Toutes", "Groupes", "Privées"]
    @State var selectedTab = "Toutes"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Conversations")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Picker_Discussion_View (selectedTab: $selectedTab, tabs: tabs)
                
            }
        }
    }
}

#Preview {
    DiscussionList()
}
