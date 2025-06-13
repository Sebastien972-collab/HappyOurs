//
//  EventCard.swift
//  HappyOurs
//
//  Created by Dembo on 10/06/2025.
//

import SwiftUI

struct EventCard: View {
    
    let event: Event
    
    var body: some View {
        HStack {
            ImagesEvent(imageName: event.imageEventName ?? "event-1")
            VStack (alignment : .leading) {
                
                TextEvent(event: event)
                MignatureParticipant()

            }
            .frame(maxWidth:.infinity, maxHeight : 75, alignment: .leading)
            .padding(.horizontal)
            
            ImageCocktailEvent()
            
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    NavigationStack {
        EventCard(event: Event.allEvents[5])
    }
}
