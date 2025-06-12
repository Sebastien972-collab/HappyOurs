//
//  SignUpView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 12/06/2025.
//

import SwiftUI

struct ConnectionView: View {
    
    @EnvironmentObject var manager: UserManager

    var body: some View {
        NavigationStack {
            ConnectionFormView(manager: ConnexionManager(manager: manager), connectionType: .signUp)
        }
        .environmentObject(manager)
    }
}

#Preview {
    ConnectionView()
        .environmentObject(UserManager())
}
