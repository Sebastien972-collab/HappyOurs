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
    
    var body: some View {
        
        if message.isFromCurrentUser() {
            
            HStack {
                
                HStack {
                    Text(message.text)
                        .padding()
                }
                
                .frame(alignment: .topLeading)
                .background(.tagadaPink10)
                .foregroundStyle(.black)
                .cornerRadius(10)
                
                Image(selectedParticipant?.username ?? "Stan")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 30, height: 30)
                    .padding(.leading, 4)
            }
 

            .frame(maxWidth : 360, alignment : .trailing)
             
        } else {
            HStack {
                Image("Stan")
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
                .foregroundStyle(.white)
                .cornerRadius(10)
            }
            .frame(maxWidth : 360, alignment : .leading)
        }
    }
}

#Preview {
    MessageBubble(message:DatabaseMessages.messagesData[0], selectedParticipant: .constant(DatabaseParticipants.participantData[0]))
}
