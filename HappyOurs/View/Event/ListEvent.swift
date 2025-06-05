//
//  ListEvent.swift
//  HappyOurs
//
//  Created by Dembo on 30/05/2025.
//

import SwiftUI

struct ListEvent: View {
    @State private var manager = EventManager()
    var body: some View {
        VStack {
            HStack{
                CircleImage(image: Image("\(manager.currentUser.currentImageName ?? "carolineImage")"))
                Text("Bonjour \(manager.currentUser.username) ")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.leading, 2)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
        
        if manager.currentUser is Participant {
            Carouselle(events: [.defaultEvent, .defaultEvent, .defaultEvent])
        } else {
            AddImageEventButtonView(systemImage: "plus.circle") { }
                .frame(height: 150)
            
        }
        Spacer()
    }
    
    
    
    
}


#Preview {
    ListEvent()
}
