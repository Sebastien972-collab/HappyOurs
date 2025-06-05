//
//  ListEvent.swift
//  HappyOurs
//
//  Created by Dembo on 30/05/2025.
//

import SwiftUI

struct ListEvent: View {
    @State private var currentUser: User = Participant.preview
    
    var body: some View {
        VStack {
            HStack{
                if currentUser as? Participant != nil {
                    
                    //                Image("carolineImage")
                    //                    .resizable()
                    //                    .frame(width: 50, height: 50)
                    //                    .clipShape(Circle())
                    CircleImage(image: Image("carolineImage"))
                    
                }
                
                
                Text("Bonjour Caroline, ")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.leading, 2)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            
            Carouselle(events: [.defaultEvent, .defaultEvent, .defaultEvent])
            Spacer()
        }
       
        
       
                           
    }
    
}

#Preview {
    ListEvent()
}
