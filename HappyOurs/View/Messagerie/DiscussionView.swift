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
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    
                    DiscussionHeader(selectedTab: $selectedTab)
                    
                    if selectedTab == "Toutes" {
                        DiscussionAll()
                    }else if selectedTab == "Groupes" {
                        DiscussionGroup()
                    }else{
                        DiscussionPrivate()
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    DiscussionView()
}
