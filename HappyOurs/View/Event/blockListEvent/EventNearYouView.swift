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
        VStack(alignment: .leading) {
            Text(type.descriptionCategorie)
                .font(.system(size: 20))                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 10)
                .padding(.top, 25)
                
            VStack(alignment: .leading) {
                ForEach(Array(eventsToShow.enumerated()) , id: \.element ){ index, event in
                    NavigationLink {
                        EventDetailsView(event: .constant(event))
                    } label: {
                        EventCard(event: event)
                    }
                    if index != eventsToShow.count-1 {
                        Divider()
                    }
                }
            }
            .background(Color.newBeige)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    EventNearYouView(type: .club, events: Event.allEvents)
}
