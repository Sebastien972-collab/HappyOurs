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
    var discussion : Discussion
    
    var body: some View {
        
        NavigationStack{
            VStack {
                ScrollView (showsIndicators: false) {
                    
                    VStack (spacing : 25){
                        
                        // Boucle pour aller chercher dans la database messages, tous les messages bubble en lien avec le participant sélectionné
                        
                        ForEach (messagerieViewModel.messages(for: selectedParticipant)) { message in
                            MessageBubble(message: message, selectedParticipant: $selectedParticipant)
                        }
                    }
                }
                
                ZStack {
                    Rectangle()
                        .fill(Color.black.opacity(0.2))
                        .ignoresSafeArea()
                        .frame(maxWidth : .infinity, maxHeight: 80)
                       
                    HStack {
                        TextField("Envoie un message...", text: $text, axis: .vertical)
                            .padding(8)
                            .background(Color.white)
                            .cornerRadius(25)
                        
                        //Bouton paperplane pour envoyer le message au participant sélectionné
                        
                        Button {
                            messagerieViewModel.sendMessage(message: text, to: selectedParticipant ?? DatabaseParticipants.participantData[1])
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
                
                // Premiere condition par type de discussion. Si privateChat, l'image et le nom de l'interlocuteur s'affiche dans la toolbar
                
                if discussion.type == .privateChat {
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
                }else{
                    
                    // Autre condition par type de discussion. Si publicChat, l'image et le nom de l'évent s'affiche dans la toolbar
                    
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Image(discussion.photoEvent ?? "event-1")
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                            Text(discussion.nameEvent ?? "Nom Event")
                                .font(.title3)
                                .fontWeight(.bold)
                        }
                    }
                }

            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ChatView(selectedParticipant: .constant(DatabaseParticipants.participantData[1]), discussion: DatabaseDiscussion.discussionData[1])
        .environmentObject(MessagerieViewModel(userManager: .init()))
}
