//
//  EventView.swift
//  HappyOurs
//
//  Created by Dembo on 10/06/2025.
//

import SwiftUI

struct EventNearYouView: View {
    var type: TypeOfEvent
    var events: [Event]
    var eventsToShow : [Event] {
        events.filter { $0.typeOfEvent.rawValue == type.rawValue }
    }
    var body: some View {
        VStack{
            Text(type.rawValue)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth:.infinity, alignment: .leading)
            
            VStack{
                ForEach(eventsToShow , id: \.self ){ event in
                    EventCard(event: event)
                    Divider()
                }
            }
            .padding(5)
            .background(Color.newBeige)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            

            

                
        }
        .padding(.horizontal,15)
    }
    
}

#Preview {
    EventNearYouView(type: .club, events: Event.allEvents)
}
