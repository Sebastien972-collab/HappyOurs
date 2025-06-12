//
//  ProfileView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 11/06/2025.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var manager: UserManager
    var body: some View {
        ZStack {
            if manager.currentUser is Participant || manager.currentUser == .guest {
                ProfileParticipantView()
            } else {
                ProfileBusinessView()
            }
        }
            
    }
}

#Preview {
    ProfileView()
        .environmentObject(UserManager())
}
