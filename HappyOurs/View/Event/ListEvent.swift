//
//  ListEvent.swift
//  HappyOurs
//
//  Created by Dembo on 30/05/2025.
//

import SwiftUI

struct ListEvent: View {
    @EnvironmentObject private var userManger: UserManager
    @State private var manager = EventManager()
    @State private var eventCreator = EventCreatorManager()
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack{
                            CircleImage(image: Image("\(manager.currentUser.currentImageName ?? "carolineImage")"))
                            
                            Text("Bonjour \(manager.currentUser.username)")
                                .font(.title3)
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.7)
                        }
                        if manager.currentUser is Participant {
                            Carouselle(events: $manager.trandingEvents )
                        } else {
                            AddImageEventButtonView(systemImage: "plus.circle") {
                                eventCreator.userManager = userManger
                                isPresented = true
                            }
                            .frame(height: 150)
                            .navigationDestination(isPresented: $isPresented) {
                                EventCreator(eventCreator: $eventCreator)
                            }
                            
                            
                        }
                        ForEach(TypeOfEvent.allCases, id: \.self) { typeOfEvent in
                            EventNearYouView(type: typeOfEvent, events: manager.allEvents)
                        }
                        .padding(.horizontal)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                }
                VStack {
                    Spacer()
                    NavigationLink {
                        QRCodeView()
                    } label: {
                        BoutonFlottant()
                    }
                    Spacer()
                        .frame(height: 20)
                }
            }
            
        }
        .environmentObject(userManger)
        
        
    }
    
}


#Preview {
    ListEvent()
        .environmentObject(UserManager())
}
