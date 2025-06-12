//
//  ContentView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 28/05/2025.
//

import SwiftUI
import FestivityUIKit
struct ContentView: View {
    enum Selection {
    case event, message, profile
    }
    @State private var selection: Selection = .event
    @EnvironmentObject var userManager: UserManager
    var body: some View {
        ZStack {
            if userManager.isAuthenticated {
                TabView {
                    Tab("Évènements", systemImage: "list.bullet") {
                        ListEvent()
                    }
                    Tab("Messages", systemImage: "message.fill") {
                        DiscussionView()
                    }
                    
                    Tab("Profile", systemImage: "person.fill") {
                        ProfileView()
                    }
                }
            } else {
                ConnectionChoiceView(manager: .init(manager: userManager))
            }
            
        }
        
        
    }
}

#Preview {
    ContentView()
        .environmentObject( UserManager())
}
