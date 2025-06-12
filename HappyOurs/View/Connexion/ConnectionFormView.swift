//
//  ConnectionFormView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 12/06/2025.
//

import SwiftUI
import FestivityUIKit

struct ConnectionFormView: View {
    @ObservedObject var manager: ConnexionManager
    let connectionType: ConnexionManager.ConnexionType
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $manager.username)
                TextField("Email", text: $manager.email)
                TextField("Ville", text: $manager.city)
                
            } header: {
                Text(manager.currentConnexionType.rawValue)
            }
            ConfirmationButtonView(title: connectionType.rawValue) {
                manager.connection()
            }

        }
        
    }
}

#Preview {
    ConnectionFormView(manager: .init(manager: .init()), connectionType: .signUp)
}
