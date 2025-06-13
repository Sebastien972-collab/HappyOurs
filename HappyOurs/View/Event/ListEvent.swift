//
//  ListEvent.swift
//  HappyOurs
//
//  Created by Dembo on 30/05/2025.
//

import SwiftUI

struct ListEvent: View {
    @EnvironmentObject private var userManager: UserManager
    @State private var manager = EventManager()
    @State private var eventCreator = EventCreatorManager()
    @State private var isPresented: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            CircleImage(image: Image("\(userManager.currentUser.currentImageName ?? "carolineImage")"))

                            Text("Bonjour \(userManager.currentUser.username)")
                                .font(.title3)
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.7)
                        }

                        if manager.currentUser is Participant {
                            Carrousel(events: $manager.currentUser.events)
                        } else {
                            AddImageEventButtonView(systemImage: "plus.circle") {
                                eventCreator.userManager = userManager
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
                            .frame(height: 100) // Pour ne pas que le contenu cache le bouton
                    }
                }

                // Bouton flottant
                VStack {
                    Spacer()
                    BoutonFlottant()
                }
            }
        }
        .environmentObject(userManager)
    }
}

#Preview {
    ListEvent()
        .environmentObject(UserManager())
}
