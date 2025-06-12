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
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $manager.username)
                if manager.currentConnexionType == .signUp {
                    TextField("Email", text: $manager.email)
                    TextField("Ville", text: $manager.city)
                }
                
            } header: {
                Text(manager.currentConnexionType.rawValue)
            }
            ConfirmationButtonView(title: manager.currentConnexionType.rawValue) {
                manager.connection()
            }
            .alert("Attention !", isPresented: $manager.showError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(manager.error.localizedDescription)
            }
        }
        
                
    }
}

#Preview {
    ConnectionFormView(manager: .init(manager: .init()))
}
