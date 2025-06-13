//
//  SignUpView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 12/06/2025.
//

import SwiftUI

struct ConnectionView: View {
    
    @ObservedObject var manager: ConnexionManager
    var body: some View {
        NavigationStack {
            ConnectionFormView(manager: manager)
        }
        .environmentObject(manager)
    }
}

#Preview {
    ConnectionView(manager: .init(manager: .init()))
        
}
