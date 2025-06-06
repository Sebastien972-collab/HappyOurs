//
//  DiscussionGroup.swift
//  HappyOurs
//
//  Created by caroletm on 04/06/2025.
//

import Foundation
import SwiftUI

struct DiscussionGroup: View {
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    var body: some View {
        
        NavigationStack {
            
            ForEach(messagerieViewModel.discussionVM.filter({ $0.type == .group})) { discussion in
                NavigationLink(destination: ChatView()) {
                    DiscussionLine(discussion: discussion)
                }.foregroundColor(.black)
            }
        }
    }
}

#Preview {
    DiscussionGroup().environmentObject(MessagerieViewModel())
}
