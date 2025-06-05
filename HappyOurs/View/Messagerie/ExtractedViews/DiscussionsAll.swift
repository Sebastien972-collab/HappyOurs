//
//  DiscussionsAll.swift
//  HappyOurs
//
//  Created by caroletm on 04/06/2025.
//

import Foundation
import SwiftUI

struct DiscussionAll: View {
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    var body: some View {
        NavigationStack {

                ForEach(messagerieViewModel.discussionVM) { discussion in
                    DiscussionLine(discussion: DatabaseDiscussion.discussionData[0])
                }
            }
        }
    }
    
    #Preview {
        DiscussionAll()
            .environmentObject(MessagerieViewModel())
    }
    
