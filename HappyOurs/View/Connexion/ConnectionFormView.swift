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
                        .keyboardType(.emailAddress)
                    TextField("Ville", text: $manager.city)
                }
                SecureField("Mot de passe", text: .constant("Password"))
                
            } header: {
                Text(manager.currentConnexionType.rawValue)
            }
            ConfirmationButtonView(title: manager.currentConnexionType.rawValue) {
                manager.connection()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .navigationTitle(manager.currentConnexionType.rawValue)
            .navigationBarTitleDisplayMode(.inline)
            .alert("Attention !", isPresented: $manager.showError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(manager.error.localizedDescription)
            }
        }
        
                
    }
}

#Preview {
    NavigationStack {
        ConnectionFormView(manager: .init(manager: .init()))
    }
}
