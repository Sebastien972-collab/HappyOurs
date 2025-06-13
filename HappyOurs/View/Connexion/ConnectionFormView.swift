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
    @State private var selection: ConnexionManager.SignUpAccountType = .particpant
    var body: some View {
        Form {
            if manager.currentConnexionType == .signUp {
                Section {
                    Picker("Type de compte", selection: $selection) {
                        ForEach(ConnexionManager.SignUpAccountType.allCases, id: \.self) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                } header: {
                    Text("Type de compte")
                }

            }
            
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
                if manager.currentConnexionType == .signUp {
                    manager.currentSignUpAccountType = selection
                }
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
