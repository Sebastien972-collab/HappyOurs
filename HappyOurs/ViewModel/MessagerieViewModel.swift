//
//  MessagerieViewModel.swift
//  HappyOurs
//
//  Created by caroletm on 05/06/2025.
//

import Foundation
import Observation

class MessagerieViewModel : ObservableObject {
    
    //  MARK: - App data
    
    //Toutes les dataBases
    
    @Published var participantsVM = DatabaseParticipants.participantData
    @Published var businessVM = DatabaseBusiness.businessData
    @Published var discussionVM = DatabaseDiscussion.discussionData
    @Published var messagesVM : [Message] = DatabaseMessages.messagesData
    
    //Current user déterminé comme le participant 0 -> a voir pour lier avec le user manager
    
    var currentUserID: UUID {
        DatabaseParticipants.participantData[0].id
     }

    //  MARK: - discussions
        
    //  MARK: - messages
    
    
    //fonction pour envoyer des messages, si le champ est vide, ça ne fait rien.

     func sendMessage(message text: String, to participant: Participant) {
         guard !text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
             return
         }

         let newMessage = Message(
            receiverID : participant.id,
            senderID : currentUserID,
            text : text,
            photoSender : participant.currentImageName ?? "Caroline",
            createdAt : Date(),
         )
        messagesVM.append(newMessage)
     }
    
    //fonction pour filtrer les messages en fonction des participants sélectionnés par rapport à la discussion. On filtre, tous les messages qui sont envoyés ou recus par le currentUser en fonction des ID.
    
    func messages(for participant: Participant?) -> [Message] {
        guard let participant else { return [] }
                
        return messagesVM.filter {
            ($0.senderID == currentUserID && $0.receiverID == participant.id) ||
            ($0.senderID == participant.id && $0.receiverID == currentUserID)
        }
    }
    
    // fonction pour savoir si le message appartient au CurrentUser, en fonction de son ID.
    
    func isFromCurrentUser(message: Message) -> Bool {
        guard let currentUserID = DatabaseParticipants.participantData.first?.id else {
            return false
        }
        return message.senderID == currentUserID    }
}

