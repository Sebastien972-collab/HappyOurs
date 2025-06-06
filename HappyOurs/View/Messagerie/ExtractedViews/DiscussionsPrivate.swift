//
//  DiscussionsPrivate.swift
//  HappyOurs
//
//  Created by caroletm on 04/06/2025.
//

import Foundation
import SwiftUI

struct DiscussionPrivate: View {
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    var body: some View {
        NavigationStack {
            
            ForEach(messagerieViewModel.discussionVM.filter({ $0.type == .solo})) { discussion in
                NavigationLink(destination: Text("Navigation")) {
                    DiscussionLine(discussion: discussion)
                }.foregroundColor(.black)
            }
        }
    }
}

#Preview {
    DiscussionPrivate()
        .environmentObject(MessagerieViewModel())
}
