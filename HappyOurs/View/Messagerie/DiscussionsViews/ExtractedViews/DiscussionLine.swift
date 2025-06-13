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
    
    // propriété calculée pour retrouver le participant.ID parmi la liste des participants grace à l'interlocuteurID
    
    var discussionCreator: User? {
        for participant in messagerieViewModel.participantsVM {
            if participant.id == discussion.interlocutorID {
                return participant
            }
        }
        return nil
    }
    
    // fonction pour formater la date
    
    func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.dateFormat = "dd/MM à HH:mm"
        return formatter.string(from: date)
    }
    
    var body: some View {
        
        // Premiere condition par type de discussion. Si privateChat, l'image et le nom de l'interlocuteur s'affiche
        
        if discussion.type == .privateChat {
            
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
        }else{
            
            // Autre condition par type de discussion. Si publicChat, l'image et le nom de l'évent s'affiche
            
            VStack {
                Divider()
                    .background(Color.darkYellow100)
                HStack {
                    Image(discussion.photoEvent ?? "event-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    VStack (alignment:.leading){
                        Text(discussion.nameEvent ?? "nom de l'Evènement")
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
}
#Preview {
    DiscussionLine(discussion : DatabaseDiscussion.discussionData[0]).environmentObject(MessagerieViewModel(userManager: .init()))
}
