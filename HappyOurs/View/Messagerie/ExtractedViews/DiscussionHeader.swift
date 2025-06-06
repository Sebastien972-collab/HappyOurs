//
//  DiscussionHeader.swift
//  HappyOurs
//
//  Created by caroletm on 04/06/2025.
//

import Foundation
import SwiftUI

struct DiscussionHeader: View {
    
    var tabs = ["Toutes", "Groupes", "Privées"]
    @Binding var selectedTab : String
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Conversations")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Picker_Discussion_View (selectedTab: $selectedTab, tabs: tabs)
                    .padding(5)
                
            }
        }
    }
}


#Preview {
    DiscussionHeader(selectedTab: .constant("Toutes"))
}
