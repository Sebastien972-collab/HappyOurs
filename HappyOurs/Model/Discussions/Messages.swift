//
//  Messages.swift
//  HappyOurs
//
//  Created by caroletm on 10/06/2025.
//

import Foundation

struct Message : Identifiable, Decodable{
    var id = UUID()
    var receiverID : UUID
    var senderID : UUID
    var text : String
    var photoSender : String
    var createdAt : Date
    

}



