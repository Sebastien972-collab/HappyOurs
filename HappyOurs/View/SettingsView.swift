//
//  SettingsView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 11/06/2025.
//

import SwiftUI
import FestivityUIKit

struct SettingsView: View {
    @EnvironmentObject private var manager: UserManager
    
    var body: some View {
        VStack(content: {
            Form {
                Section {
                    FormText(title: "Username", text: manager.currentUser.username)
                    FormText(title: "Email", text: manager.currentUser.email)
                    FormText(title: "Nb d'évènements", text: "\(manager.currentUser.events.count)")
                    FormText(title: "Lieu", text: manager.currentUser.ville)
                } header: {
                    Text("Mes infos")
                }
            }
            ConfirmationButtonView(title: "Se déconnecter", action: {
                withAnimation {
                    manager.logOut()
                }
            })
        })
        .navigationTitle(Text("Paramètres"))
        .navigationBarTitleDisplayMode(.inline)
        .environmentObject(manager)
    }
}

#Preview {
    NavigationStack {
        SettingsView()
            .environmentObject(UserManager())
    }
}

struct FormText: View {
    let title: String
    let text: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(text)
                .foregroundColor(.secondary)
            
            
        }
    }
}
