//
//  DiscussionLine.swift
//  HappyOurs
//
//  Created by caroletm on 04/06/2025.
//

import SwiftUI
import Foundation

struct DiscussionLine: View {
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    var discussion : Discussion
    
    var discussionCreator: User? {
        for participant in messagerieViewModel.participantsVM {
            if participant.id == discussion.interlocutorID {
                return participant
            }
        }
        return nil
    }
    
    func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.dateFormat = "dd/MM à HH:mm"
        return formatter.string(from: date)
    }
    
    var body: some View {
        VStack {
            Divider()
                .background(Color.darkYellow100)
            HStack {
                Image(discussionCreator?.currentImageName ?? "Caroline")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                VStack (alignment:.leading){
                    Text(discussionCreator?.username ?? "Carooo")
                        .fontWeight(.semibold)
                        .font(.subheadline)
                    Spacer()
                    Text(discussion.description)
                        .font(.subheadline)
                }
                Spacer()
                VStack {
                    Text(formattedDate(discussion.lastDateMessage))
                        .font(.caption)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.darkYellow100)
                }
            }
            .frame(maxWidth : .infinity, maxHeight: 50)
            .padding(10)
        }
    }
}
#Preview {
    DiscussionLine(discussion : DatabaseDiscussion.discussionData[0]).environmentObject(MessagerieViewModel())
}
