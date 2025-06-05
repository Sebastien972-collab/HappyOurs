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
    
    var body: some View {
        ZStack {
            TabView {
                Tab("Évènements", systemImage: "list.bullet") {
                    ListEvent()
                }
                Tab("Messages", systemImage: "message.fill") {
                    Text("Messages")
                }
                
                Tab("Profile", systemImage: "person.fill") {
                    Text("Profiles")
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
