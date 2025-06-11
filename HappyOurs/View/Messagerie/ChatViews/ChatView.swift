//
//  ChatView.swift
//  HappyOurs
//
//  Created by caroletm on 10/06/2025.
//

import SwiftUI

struct ChatView : View {
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    @State var text = ""
    @Binding var selectedParticipant : Participant?
    
    var body: some View {
        
        NavigationStack{
            VStack {
                ScrollView (showsIndicators: false) {
                    
                    VStack (spacing : 8){
                        
                        ForEach (messagerieViewModel.messagesVM) { message in
                            MessageBubble(message: message, selectedParticipant: $selectedParticipant)
                        }
                    }
                }
                
                ZStack {
                    Rectangle()
                        .fill(Color.darkYellow200)
                        .ignoresSafeArea()
                        .frame(maxWidth : .infinity, maxHeight: 90)
                       
                    HStack {
                        TextField("Hello", text: $text, axis: .vertical)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(25)
                        Button {
                            messagerieViewModel.sendMessage(message: text)
                            text = ""
                        }label:{
                            Image(systemName: "paperplane")
                                .foregroundStyle(Color.white)
                                .padding(.horizontal, 5)
                        }
                    }.padding()
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(selectedParticipant?.currentImageName ?? "Caroo")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                        Text(selectedParticipant?.username ?? "Caroo")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ChatView(selectedParticipant: .constant(DatabaseParticipants.participantData[2]))
        .environmentObject(MessagerieViewModel())
}
