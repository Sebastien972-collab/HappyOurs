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
        ScrollView {
            VStack {
                HStack{
                    CircleImage(image: Image("\(manager.currentUser.currentImageName ?? "carolineImage")"))
            
                    Text("Bonjour \(manager.currentUser.username)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, 2)
                        .minimumScaleFactor(0.7)
                        .padding(.horizontal)
                }
                if manager.currentUser is Participant {
                    Carouselle(events: $manager.trandingEvents )
                } else {
                    AddImageEventButtonView(systemImage: "plus.circle") { }
                        .frame(height: 150)
                    
                }
                ForEach(TypeOfEvent.allCases, id: \.self) { typeOfEvent in
                    EventNearYouView(type: typeOfEvent, events: Event.allEvents)
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
        }
    }
    
    
    
    
}


#Preview {
    NavigationStack {
        ListEvent()
    }
}
