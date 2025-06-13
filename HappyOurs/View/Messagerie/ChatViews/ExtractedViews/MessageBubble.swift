//
//  MessageBubble.swift
//  HappyOurs
//
//  Created by caroletm on 10/06/2025.
//

import SwiftUI

struct MessageBubble: View {
    
    var message: Message
    @Binding var selectedParticipant : Participant?
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    
    var body: some View {
        
        // Message bubble rose à droite si le message vient du CurrentUser
        
        if messagerieViewModel.isFromCurrentUser(message: message) {
            
            HStack {
                
                HStack {
                    Text(message.text)
                        .padding()
                }
                
                .frame(alignment: .topLeading)
                .background(.tagadaPink10)
                .foregroundStyle(.black)
                .cornerRadius(10)
                
                Image("Caroline")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 30, height: 30)
                    .padding(.leading, 4)
            }
 

            .frame(maxWidth : 360, alignment : .trailing)
             
        } else {
            
            // Message bubble jaune à gauche si le message vient du CurrentUser
            
            HStack {
                Image(selectedParticipant?.currentImageName ?? "Caroline")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 30, height: 30)
                    .padding(.trailing, 4)
                
                HStack {
                    Text(message.text)
                        .padding()
                }
                .frame(alignment: .leading)
                .background(.darkYellow50)
                .foregroundStyle(.black)
                .cornerRadius(10)
            }
            .frame(maxWidth : 360, alignment : .leading)
        }
    }
}

#Preview {
    MessageBubble(message:DatabaseMessages.messagesData[0], selectedParticipant: .constant(DatabaseParticipants.participantData[1]))
        .environmentObject(MessagerieViewModel(userManager: .init()))
}
